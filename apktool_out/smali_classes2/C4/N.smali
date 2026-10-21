.class public final LC4/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:LC4/O;

.field public final synthetic b:LC4/P;


# direct methods
.method public constructor <init>(LC4/P;LC4/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/N;->b:LC4/P;

    .line 5
    .line 6
    iput-object p2, p0, LC4/N;->a:LC4/O;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, LC4/N;->a:LC4/O;

    .line 2
    .line 3
    iget-object v1, p0, LC4/N;->b:LC4/P;

    .line 4
    .line 5
    iget-boolean v2, v1, LC4/P;->i:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, LC4/P;->i:Z

    .line 11
    .line 12
    :try_start_0
    iget-object v3, v0, LC4/O;->A:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, LC4/O;->A:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lg1/g;->from(Landroid/graphics/Bitmap;)Lg1/e;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lg1/e;->generate()Lg1/g;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, v0, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lg1/g;->getDarkVibrantColor(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, v4, Lflix/com/vision/models/Movie;->color:I

    .line 44
    .line 45
    iget-object v1, v1, LC4/P;->m:Lflix/com/vision/activities/MainActivity;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v0, v0, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 50
    .line 51
    iget v0, v0, Lflix/com/vision/models/Movie;->color:I

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lflix/com/vision/activities/MainActivity;->extractDominantColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
