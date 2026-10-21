.class public final Lm4/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm4/D;

.field public final b:Lm4/I;

.field public final c:Lm4/a;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Lm4/s;

.field public g:Z

.field public h:Z

.field public i:Lm4/i;


# direct methods
.method public constructor <init>(Lm4/D;Landroid/widget/ImageView;Lm4/I;ILjava/lang/String;Lm4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/s;->a:Lm4/D;

    .line 5
    .line 6
    iput-object p3, p0, Lm4/s;->b:Lm4/I;

    .line 7
    .line 8
    new-instance p3, Lm4/a;

    .line 9
    .line 10
    iget-object p1, p1, Lm4/D;->i:Ljava/lang/ref/ReferenceQueue;

    .line 11
    .line 12
    invoke-direct {p3, p0, p2, p1}, Lm4/a;-><init>(Lm4/s;Landroid/widget/ImageView;Ljava/lang/ref/ReferenceQueue;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lm4/s;->c:Lm4/a;

    .line 16
    .line 17
    iput p4, p0, Lm4/s;->d:I

    .line 18
    .line 19
    iput-object p5, p0, Lm4/s;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p0, p0, Lm4/s;->f:Lm4/s;

    .line 22
    .line 23
    iput-object p6, p0, Lm4/s;->i:Lm4/i;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/s;->c:Lm4/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lm4/s;->c:Lm4/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lm4/s;->a:Lm4/D;

    .line 15
    .line 16
    sget v2, Lm4/E;->e:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Landroid/graphics/drawable/Animatable;

    .line 28
    .line 29
    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v3, Lm4/E;

    .line 33
    .line 34
    iget-object v1, v1, Lm4/D;->c:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {v3, v1, p1, v2, p2}, Lm4/E;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lm4/s;->i:Lm4/i;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Lm4/i;->onSuccess()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "Attempted to complete action with no result!\n"

    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm4/s;->c:Lm4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v1, Landroid/graphics/drawable/Animatable;

    .line 21
    .line 22
    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v1, p0, Lm4/s;->d:I

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lm4/s;->i:Lm4/i;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lm4/i;->onError(Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method
