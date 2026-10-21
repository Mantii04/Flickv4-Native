.class public Lcz/msebera/android/httpclient/conn/params/ConnManagerParamBean;
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
.method public setConnectionsPerRoute(Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.conn-manager.max-per-route"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    const-string v1, "http.conn-manager.max-total"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTimeout(J)V
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
