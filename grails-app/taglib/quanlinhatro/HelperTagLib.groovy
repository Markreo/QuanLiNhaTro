package quanlinhatro

class HelperTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "qlnhatro"

    def renderError = { attrs->
        out << g.render(template: '/templates/messages', model: [obj: attrs.obj])
    }

    def renderButton = {
        out << g.render(template: '/templates/button_footer')
    }
}
