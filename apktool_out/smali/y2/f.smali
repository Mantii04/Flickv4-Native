.class public final Ly2/f;
.super Lw2/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ly2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw2/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ly2/d;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ly2/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/f;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, Ly2/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly2/d;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/f;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, Ly2/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly2/d;->getFirstFrame()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw2/f;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ly2/d;

    .line 5
    .line 6
    invoke-virtual {v1}, Ly2/d;->stop()V

    .line 7
    .line 8
    .line 9
    check-cast v0, Ly2/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ly2/d;->recycle()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
