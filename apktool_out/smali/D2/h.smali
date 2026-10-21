.class public abstract LD2/h;
.super LD2/n;
.source "SourceFile"

# interfaces
.implements LE2/c;


# instance fields
.field public j:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LD2/n;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LD2/n;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, LD2/h;->setResource(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, LD2/h;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LD2/a;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, LD2/h;->setResource(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, LD2/h;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LD2/n;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, LD2/h;->setResource(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, LD2/h;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;LE2/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LE2/d;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    check-cast p2, LE2/b;

    .line 5
    .line 6
    invoke-virtual {p2, p1, p0}, LE2/b;->transition(Ljava/lang/Object;LE2/c;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of p2, p1, Landroid/graphics/drawable/Animatable;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 18
    .line 19
    iput-object p1, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 20
    .line 21
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, LD2/h;->setResource(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    instance-of p2, p1, Landroid/graphics/drawable/Animatable;

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 36
    .line 37
    iput-object p1, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 38
    .line 39
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iput-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 44
    .line 45
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, LD2/h;->j:Landroid/graphics/drawable/Animatable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD2/n;->b:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract setResource(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
