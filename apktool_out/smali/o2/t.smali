.class public final Lo2/t;
.super Lo2/c;
.source "SourceFile"


# virtual methods
.method public bridge synthetic create()Lo2/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo2/t;->create()Lo2/s;

    move-result-object v0

    return-object v0
.end method

.method public create()Lo2/s;
    .locals 1

    .line 2
    new-instance v0, Lo2/s;

    invoke-direct {v0, p0}, Lo2/s;-><init>(Lo2/t;)V

    return-object v0
.end method

.method public get(ILandroid/graphics/Bitmap$Config;)Lo2/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/c;->a:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo2/q;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lo2/t;->create()Lo2/q;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    check-cast v0, Lo2/s;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lo2/s;->init(ILandroid/graphics/Bitmap$Config;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
