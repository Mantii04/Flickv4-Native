.class public final Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private final local:Lcz/msebera/android/httpclient/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HTTP context"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 11
    .line 12
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 13
    .line 14
    iput-object p2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    return-object v0
.end method

.method public getDefaults()Lcz/msebera/android/httpclient/protocol/HttpContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[local: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "defaults: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "]"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
