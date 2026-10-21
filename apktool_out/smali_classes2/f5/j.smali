.class public final Lf5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:Lflix/com/vision/models/StreamUrl;


# direct methods
.method public constructor <init>(Lflix/com/vision/models/StreamUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/j;->b:Lflix/com/vision/models/StreamUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf5/j;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lf5/j;->b:Lflix/com/vision/models/StreamUrl;

    iget-object v1, v0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-eqz v4, :cond_3

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/16 v6, 0x16

    if-eq v5, v6, :cond_0

    const/16 v6, 0x22

    if-eq v5, v6, :cond_0

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_0

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1, p1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iput-object p1, v0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
