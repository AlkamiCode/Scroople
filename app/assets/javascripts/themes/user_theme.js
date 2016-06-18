var editTextElement = function (themeID, themeColumn, newColumnValue) {
    if (newColumnValue === ""){
        console.log("empty input value")
      return;
    } else {
        console.log("begin ajax call")
        $.ajax({
            url: "/themes/agency/" + themeID,
            type: "PUT",
            data: {agency: { [themeColumn]: newColumnValue} },
            dataType: "json",
            success: function(result) {
                event.stopPropagation()
                console.log("success!", result.results)
                $(".form-inline").remove()
            }
        })
    }
}

var editImageElement = function(targetColumn) {
    console.log(targetColumn)
    $("body").append("<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'><div class='modal-dialog' role='document'><div class='modal-content'><div class='modal-body'><form id='image-upload' enctype='multipart/form-data' action='/themes/agency/1' accept-charset='UTF-8' method='post'><input name='utf8' type='hidden' value='✓'><input type='hidden' name='_method' value='put'><input type='hidden' name='authenticity_token' value='g2i18zLyycMN3T5WTVJLZzcYOqFHbMsPrzkj3evOUWObohATRAxsfREBy/wfDwokeqhy3Z8zcJxqJOV91+M0EQ=='><input id='file' type='file' name='agency["+targetColumn+"]'><br><input type='submit' value='submit' disabled class='btn btn-primary'><button data-toggle='modal' data-target='#myModal' name='button' type='button' class='btn btn-danger'>Cancel</button></form></div></div></div></div>")


    $('input:file').change(function() {
        if ($(this).val()) {
            $('input:submit').attr('disabled',false);
        }
    });
}

$(document).ready(function(){
    // display users header image
    var headerImageURL = $("header").data("header-image-url")
    $("header").css("background-image", "url("+headerImageURL+")")

    // custom real time type and see text characters
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

    // element editing
    $("body").on("click", function() {
        var textElements   = ["H1", "H2", "H3", "H4", "H5", "H6", "DIV", "P"]
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
                $(clickedElement).after('<form class="form-inline"><div class="form-group"><input type="text" class="form-control" id="master-input" placeholder="'+innerContent+'" autofocus></div><button type="button" data-original-content="'+innerContent+'" class="btn btn-danger">Cancel</button><button type="button" class="btn btn-success">Submit</button></div>')

                $("input").on("inputchange", function(element) {
                    $(clickedElement).text(this.value)
                })

                $("input").on("keydown", function(key) {
                    if (key.keyCode === 13) {
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

            // console.log(eventTargetTag, event.target.textContent, "text element!")
        } else if (eventTargetTag === "IMG" || event.target.id === "edit-background-image") {
            var targetColumn = event.target.dataset["themeColumn"]
            console.log(targetColumn)

            editImageElement(targetColumn)

            // console.log(eventTargetTag, event.target, "image or backgournd-image icon")
        } else if (event.target.tagName === "I") {

            // console.log(eventTargetTag, event.target, "font-icon")
        }
    })


})
