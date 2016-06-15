$(document).ready(function(){
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

    $(".click-to-update").on("click", function(element){
        var innerContent   = $(this).text()
        var clickedElement = $(this)

        if($(".form-inline").size() !== 0){
            element.preventDefault()
        } else {

            $(this).after("<form class='form-inline'><div class='form-group'><input type='text' class='form-control' id='' placeholder='"+innerContent+"' autofocus></div><button type='button' data-original-content='"+innerContent+"' class='btn btn-danger'>Cancel</button><button type='button' class='btn btn-success'>Submit</button></div>")

            $("input").on("inputchange", function() {
                $(clickedElement).text(this.value)
            })

            $("input").on("keydown", function(key) {
                if (key.keyCode === 13) {
                    key.preventDefault()
                    $(".btn-success").click()
                }
            })

            $(".btn-danger").on("click", function() {
                $(clickedElement).text($(this).data("original-content"))
                $('.form-inline').remove()
            })

            $(".btn-success").on("click", function() {
                var themeID        = $("body").data("theme-id")
                var themeColumn    = $(this).parent().prev().data("theme-column")
                var newColumnValue = $(this).siblings().find("input").val()

                if (newColumnValue === ""){
                  return;
                } else {
                    $.ajax({
                        url: "/themes/agency/" + themeID,
                        type: "PUT",
                        data: {agency: { [themeColumn]: newColumnValue} },
                        success: function(result) {
                            console.log(result)
                            $(".form-inline").remove()
                        }
                    })
                }

            })
        }
    })
})