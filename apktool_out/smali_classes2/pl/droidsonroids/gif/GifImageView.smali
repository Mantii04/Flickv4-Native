.class public Lpl/droidsonroids/gif/GifImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ln6/e;->a:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Ln6/d;

    .line 15
    .line 16
    invoke-direct {p1, p0, p2}, Ln6/d;-><init>(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;)V

    .line 17
    .line 18
    .line 19
    iget p2, p1, Lpl/droidsonroids/gif/e;->b:I

    .line 20
    .line 21
    if-ltz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Lpl/droidsonroids/gif/c;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Lpl/droidsonroids/gif/c;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lpl/droidsonroids/gif/c;->setLoopCount(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v1, v0, Lpl/droidsonroids/gif/c;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    check-cast v0, Lpl/droidsonroids/gif/c;

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Lpl/droidsonroids/gif/c;->setLoopCount(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ln6/d;

    .line 51
    .line 52
    invoke-direct {p1}, Ln6/d;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-boolean p2, p1, Lpl/droidsonroids/gif/e;->a:Z

    .line 56
    .line 57
    iput-boolean p2, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    .line 58
    .line 59
    iget p2, p1, Ln6/d;->c:I

    .line 60
    .line 61
    if-lez p2, :cond_3

    .line 62
    .line 63
    invoke-super {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget p1, p1, Ln6/d;->d:I

    .line 67
    .line 68
    if-lez p1, :cond_4

    .line 69
    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lpl/droidsonroids/gif/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lpl/droidsonroids/gif/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p1, p1, Lpl/droidsonroids/gif/d;->b:[[J

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aget-object v1, p1, v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    instance-of v2, v0, Lpl/droidsonroids/gif/c;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    check-cast v0, Lpl/droidsonroids/gif/c;

    .line 34
    .line 35
    iget-object v2, v0, Lpl/droidsonroids/gif/c;->p:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 36
    .line 37
    iget-object v3, v0, Lpl/droidsonroids/gif/c;->n:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-virtual {v2, v1, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->o([JLandroid/graphics/Bitmap;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-long v1, v1

    .line 44
    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/c;->a(J)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x1

    .line 52
    aget-object p1, p1, v1

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    instance-of v1, v0, Lpl/droidsonroids/gif/c;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    check-cast v0, Lpl/droidsonroids/gif/c;

    .line 61
    .line 62
    iget-object v1, v0, Lpl/droidsonroids/gif/c;->p:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 63
    .line 64
    iget-object v2, v0, Lpl/droidsonroids/gif/c;->n:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-virtual {v1, p1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->o([JLandroid/graphics/Bitmap;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    int-to-long v1, p1

    .line 71
    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/c;->a(J)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    new-instance v2, Lpl/droidsonroids/gif/d;

    .line 21
    .line 22
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x2

    .line 27
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aput-object v0, v4, v5

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v4, v0

    .line 34
    .line 35
    invoke-direct {v2, v3, v4}, Lpl/droidsonroids/gif/d;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    return-object v2
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Ln6/e;->a(Lpl/droidsonroids/gif/GifImageView;ZI)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Ln6/e;->a(Lpl/droidsonroids/gif/GifImageView;ZI)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2

    .line 1
    sget-object v0, Ln6/e;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/c;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1, p1}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
