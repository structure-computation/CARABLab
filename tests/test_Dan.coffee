# lib ../Soja/ModelEditor.css
# lib ../Soja/TreeView.css
# lib ../Soja/Color.css
# lib ../Soja/TreeApp.css
# lib ../Soja/LayoutManager.css
# lib ../Soja/CodeEditor.css
# lib ../Soja/Application.css
# lib ../Soja/User.css
# lib ../Soja/FileSystem.css

# lib ../gen/EcosystemScience.css
# lib ../gen/SiteModelS2.css

# lib ../css/test_Dan.css

# lib ../Soja/Soja.js
# lib ../Soja/DomHelper.js
# lib ../Soja/TreeView.js
# lib ../Soja/BrowserState.js
# lib ../Soja/LayoutManager.js
# lib ../Soja/ModelEditor.js
# lib ../Soja/FileSystem.js
# lib ../Soja/Application.js
# lib ../Soja/User.js
# lib ../Soja/TreeApp.js

# lib ../CodeMirror-2.22/lib/codemirror.js
# lib ../CodeMirror-2.22/mode/xml/xml.js
# lib ../CodeMirror-2.22/lib/util/dialog.js
# lib ../CodeMirror-2.22/mode/javascript/javascript.js
# lib ../CodeMirror-2.22/mode/ruby/ruby.js
# lib ../CodeMirror-2.22/lib/util/searchcursor.js
# lib ../CodeMirror-2.22/lib/util/match-highlighter.js

# lib ../jQuery/jQuery.js
# lib ../jQuery/carhartl-jquery-cookie-92b7715/jquery.cookie.js

# lib ../RGraph/libraries/RGraph.thermometer.js
# lib ../RGraph/libraries/RGraph.common.core.js
# lib ../RGraph/libraries/RGraph.fuel.js
# lib ../gen/SiteModelS2.js
# lib ../gen/SiteModelS2.css



# test_Dan = ->
#         
#     slideshow = new_dom_element
#         parentNode: document.body
#         nodeName  : "div"
#         className : "slideshow"
#         style     : 
#             position:   "center"
#             top:        0
#             left:       0 
#             width:      350
#             height:     200
#             background: "white"
#             
#                 
#     ul = new_dom_element
#         parentNode: slideshow
#         nodeName  : "ul"
#         
#     li_1 = new_dom_element
#         parentNode: ul
#         nodeName  : "li"
#     li_2 = new_dom_element
#         parentNode: ul
#         nodeName  : "li"
#     li_3 = new_dom_element
#         parentNode: ul
#         nodeName  : "li"
#           
#     img_1 = new_dom_element
#         parentNode: li_1
#         nodeName  : "img"
#         src       : "../img/logo_BPI_France.png"
#         width     : "350"
#         height    : "200"
#     img_2 = new_dom_element
#         parentNode: li_2
#         nodeName  : "img"          
#         src       : "../img/logo_ens.png"
#         width     : "350"
#         height    : "200"
#     img_3 = new_dom_element
#         parentNode: li_3
#         nodeName  : "img"
#         src       : "../img/logo_incuballiance.png"
#         width     : "350"
#         height    : "200"
#     
#     $(()->
#       setInterval(()->
#             $(".slideshow ul").animate( {marginLeft:-350}, 1000, ()-> $(this).css({marginLeft:0}).find("li:last").after($(this).find("li:first")))
#         2000))




#     slider_item = new SliderItem
#     
#     slider_item.add_child new SiteImageItem
#                 name : 'logo'
#                 src : "../img/logo_BPI_France.png"
#                 
#                   
#     slider_item.add_child new SiteImageItem
#                 name : 'logo'
#                 src : "../img/logo_ens.png"
#                 
#                   
#     slider_item.add_child new SiteImageItem
#                 name : 'logo'
#                 src : "../img/logo_incuballiance.png"
#                
#     
#     test = new_dom_element
#         parentNode: document.body
#         nodeName  : "div"
#         style     : 
#             position:   "center"
#             top:        0
#             left:       0 
#             width:      350
#             height:     200
#             background: "white"
#     
#     slider_view = new SliderView slider_item, test, "normal"

test_Dan = ->

    canvas = new_dom_element
        parentNode: document.body
        nodeName  : "canvas"
        id      : "test"
        txt     : "no canvas"
        width : 100
        height: 400
    
    console.log canvas.width
    
    $(()->
        thermometer = new RGraph.Thermometer(
            id: "test"
            min: 0
            max: 100
            width : 100
            height: 400
            value: 36).draw()
        )