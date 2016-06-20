var editTextElement = function (themeID, themeColumn, newColumnValue) {
    if (newColumnValue === ""){
        console.log("empty input value")
        event.preventDefault()
    } else {
        console.log("begin ajax call")
        $.ajax({
            url: "/themes/agency/" + themeID,
            type: "PUT",
            data: {agency: { [themeColumn]: newColumnValue} },
            dataType: "json",
            success: function(result) {
                console.log("success!", result.results)
                $(".form-inline").remove()
            }
        })
    }
}

var editImageElement = function(targetColumn) {
    $("body").append("<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'><div class='modal-dialog' role='document'><div class='modal-content'><div class='modal-body'>"+targetColumn+"<form id='image-upload' enctype='multipart/form-data' action='/themes/agency/1' accept-charset='UTF-8' method='post'><input name='utf8' type='hidden' value='✓'><input type='hidden' name='_method' value='put'><input type='hidden' name='authenticity_token' value='g2i18zLyycMN3T5WTVJLZzcYOqFHbMsPrzkj3evOUWObohATRAxsfREBy/wfDwokeqhy3Z8zcJxqJOV91+M0EQ=='><input id='file' type='file' name='agency["+targetColumn+"]'><br><input type='submit' value='submit' disabled class='btn btn-primary'><button data-toggle='modal' data-target='#myModal' name='button' type='button' class='btn btn-danger'>Cancel</button></form></div></div></div></div>")


    $('input:file').change(function() {
        if ($(this).val()) {
            $('input:submit').attr('disabled',false);
        }
    });
}

var realTimeInputUpdate = function () {
    $.event.special.inputchange = {
        setup: function() {
            var self = this, val
            $.data(this, 'timer', window.setInterval(function() {
                val = self.value
                if ( $.data( self, 'cache') != val ) {
                    $.data( self, 'cache', val )
                    $( self ).trigger( 'inputchange' )
                }
            }, 20))
        },
        teardown: function() {
            window.clearInterval( $.data(this, 'timer') )
        },
        add: function() {
            $.data(this, 'cache', this.value)
        }
    }
}

var addTextEditForm = function (clickedElement, innerContent) {
    $(clickedElement).after('<form class="form-inline"><div class="form-group"><input type="text" class="form-control" id="master-input" placeholder="'+innerContent+'" autofocus></div><button type="button" data-original-content="'+innerContent+'" class="btn btn-danger">Cancel</button><button type="button" class="btn btn-success">Submit</button></div>')

    $("input").on("inputchange", function(element) {
        $(clickedElement).text(this.value)
    })

    $("input").on("keydown", function(key) {
        if (key.keyCode === 13) {
            event.preventDefault()
            var themeID        = $("body").data("theme-id")
            var themeColumn    = $(this).parent().parent().prev().data("theme-column")
            var newColumnValue = $(this).val()

            editTextElement(themeID, themeColumn, newColumnValue)
        }
    })

    $(".btn-danger").on("click", function() {
        console.log(".btn-danger delete")
        $(clickedElement).text($(this).data('original-content'))
        $('.form-inline').remove()
    })

    $(".btn-success").on("click", function() {
        console.log(".btn-success submit")
        var themeID        = $("body").data("theme-id")
        var themeColumn    = $(this).parent().prev().data("theme-column")
        var newColumnValue = $(this).siblings().find("input").val()

        editTextElement(themeID, themeColumn, newColumnValue)
    })
}

$(document).ready(function(){
    // display users header image
    var headerImageURL = $("header").data("header-image-url")
    $("header").css("background-image", "url("+headerImageURL+")")

    // custom real time type and see text characters
    realTimeInputUpdate()

    // element editing
    $("body").on("click", function() {
        var textElements   = ["H1", "H2", "H3", "H4", "H5", "H6", "P"]
        var eventTargetTag = event.target.tagName

        if ($.inArray(eventTargetTag, textElements) >= 0
            && !/\s{5,}/.test(event.target.textContent)) {

            var innerContent   = event.target.textContent
            var clickedElement = event.target

            if($(".form-inline").size() !== 0){
                console.log("only one input field at a time!")
                event.preventDefault()
            } else {
                console.log("begin adding input field")
                addTextEditForm(clickedElement, innerContent)
            }

        } else if (eventTargetTag === "IMG" || event.target.id === "edit-background-image") {
            var targetColumn = event.target.dataset["themeColumn"]
            editImageElement(targetColumn)

        } else if (event.target.tagName === "I") {
            if (event.target.dataset["themeColumn"]) {
                targetIcon    = event.target.dataset["themeColumn"]
                targetElement = event.target

                $("body").append("<div class='portfolio-modal modal fade' id="+targetIcon+" tabindex='-1' role='dialog' aria-hidden='true'><div class='modal-content'><div class='close-modal' data-dismiss='modal'><div class='lr'><div class='rl'></div></div></div><div class='container'><div class='row'><div class='col-lg-8 col-lg-offset-2'><div class='modal-body'><div>Click To Select Icon</div><ul style='list-style: none;'><div class='row' id='first-row'><div class='container'><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-glass' data-unicode='f000'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-music' data-unicode='f001'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-search' data-unicode='f002'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-envelope-o' data-unicode='f003'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-heart' data-unicode='f004'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-star' data-unicode='f005'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-star-o' data-unicode='f006'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-user' data-unicode='f007'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-film' data-unicode='f008'></i></li><li class='col-md-1 col-sm-2 col-xs-6 grid-icon'><i class='fa fa-th-large' data-unicode='f009'></i></li></div></div></ul><button type='button' class='btn btn-primary' data-dismiss='modal'><i class='fa fa-times'></i>Close</button></div></div></div></div></div></div>'")

                $("#" + targetIcon).modal("show")
            } else {
                var newIconClass = event.target.className
                targetElement.className = newIconClass + " fa-stack-1x fa-inverse"
                $("#" + targetIcon).modal("hide")
            }




            // console.log(eventTargetTag, event.target, event.target.textContent, event.target.parentElement.textContent)
        }
    })

})
