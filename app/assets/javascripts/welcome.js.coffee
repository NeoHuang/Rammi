insertcode = ->
  $body = $("body")
  #$body.append "<div style=\" height:1000px; font-size:24px;\">welcome</div>"
  $body.append $body
  $("#page_tag_load").hide()
$(document).ready ->
  $(window).scroll ->
    $body = $("body")
    $html = ""
    $html += "<br/>" + ($(window).height() + $(window).scrollTop())
    $html += "<br/>window.height: " + $(window).height()
    $html += "<br/>body.height: " + $body.height()
    $html += "<br/>window.scrollTop: " + $(window).scrollTop()
    $("#page_tag_bottom").html $html
    
    #check window size
    if ($(window).height() + $(window).scrollTop()) >= $body.height()
      $("#page_tag_load").show()
      
      #setTimeout(insertcode, 1000);/*IE not supported*/
      insertcode()