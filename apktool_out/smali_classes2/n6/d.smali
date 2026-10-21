.class public final Ln6/d;
.super Lpl/droidsonroids/gif/e;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lpl/droidsonroids/gif/e;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln6/d;->c:I

    .line 6
    iput v0, p0, Ln6/d;->d:I

    return-void
.end method

.method public constructor <init>(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lpl/droidsonroids/gif/e;-><init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, v0}, Ln6/d;->a(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    iput v0, p0, Ln6/d;->c:I

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0}, Ln6/d;->a(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;Z)I

    move-result p1

    iput p1, p0, Ln6/d;->d:I

    return-void
.end method

.method public static a(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;Z)I
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "src"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "background"

    .line 7
    .line 8
    :goto_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Ln6/e;->a:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p0, p2, p1}, Ln6/e;->a(Lpl/droidsonroids/gif/GifImageView;ZI)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    return p1

    .line 40
    :cond_1
    return v2
.end method
