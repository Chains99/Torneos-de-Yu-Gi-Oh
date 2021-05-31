from aplicaciones.consultas.QueryFactory import get_factory

class HandlerForm():
    def handle(self, post_request, context):
        _factory = get_factory()
        _instance = _factory[post_request["form-type"]].get_instance(post_request)
        return _instance.execute(context)