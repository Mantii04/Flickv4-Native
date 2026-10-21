.class public final Lu2/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/M;
.implements Ln2/I;


# instance fields
.field public final b:Landroid/content/res/Resources;

.field public final e:Ln2/M;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ln2/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/content/res/Resources;

    .line 9
    .line 10
    iput-object p1, p0, Lu2/J;->b:Landroid/content/res/Resources;

    .line 11
    .line 12
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ln2/M;

    .line 17
    .line 18
    iput-object p1, p0, Lu2/J;->e:Ln2/M;

    .line 19
    .line 20
    return-void
.end method

.method public static obtain(Landroid/content/res/Resources;Ln2/M;)Ln2/M;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ln2/M;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lu2/J;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lu2/J;-><init>(Landroid/content/res/Resources;Ln2/M;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public get()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lu2/J;->e:Ln2/M;

    invoke-interface {v1}, Ln2/M;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lu2/J;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu2/J;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu2/J;->e:Ln2/M;

    .line 2
    .line 3
    invoke-interface {v0}, Ln2/M;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu2/J;->e:Ln2/M;

    .line 2
    .line 3
    instance-of v1, v0, Ln2/I;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ln2/I;

    .line 8
    .line 9
    invoke-interface {v0}, Ln2/I;->initialize()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu2/J;->e:Ln2/M;

    .line 2
    .line 3
    invoke-interface {v0}, Ln2/M;->recycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
