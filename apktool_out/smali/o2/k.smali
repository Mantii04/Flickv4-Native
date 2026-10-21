.class public final Lo2/k;
.super Lo2/c;
.source "SourceFile"


# virtual methods
.method public create()Lo2/j;
    .locals 1

    .line 2
    new-instance v0, Lo2/j;

    invoke-direct {v0, p0}, Lo2/j;-><init>(Lo2/k;)V

    return-object v0
.end method

.method public bridge synthetic create()Lo2/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo2/k;->create()Lo2/j;

    move-result-object v0

    return-object v0
.end method
