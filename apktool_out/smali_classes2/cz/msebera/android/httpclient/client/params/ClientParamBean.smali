.class public Lcz/msebera/android/httpclient/client/params/ClientParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public setAllowCircularRedirects(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.protocol.allow-circular-redirects"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.connection-manager.factory-class-name"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setConnectionManagerTimeout(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.conn-manager.timeout"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.protocol.cookie-policy"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.default-headers"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setDefaultHost(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.default-host"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHandleAuthentication(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.protocol.handle-authentication"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHandleRedirects(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.protocol.handle-redirects"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.protocol.max-redirects"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRejectRelativeRedirect(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.protocol.reject-relative-redirect"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVirtualHost(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.virtual-host"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method
