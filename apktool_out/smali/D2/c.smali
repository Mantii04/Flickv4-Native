.class public abstract LD2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD2/k;


# instance fields
.field public final b:I

.field public final e:I

.field public f:LC2/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, v0}, LD2/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1, p2}, LG2/t;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput p1, p0, LD2/c;->b:I

    .line 5
    iput p2, p0, LD2/c;->e:I

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    const-string v2, " and height: "

    .line 7
    invoke-static {p1, p2, v1, v2}, LA/i;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getRequest()LC2/c;
    .locals 1

    .line 1
    iget-object v0, p0, LD2/c;->f:LC2/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize(LD2/j;)V
    .locals 2

    .line 1
    iget v0, p0, LD2/c;->e:I

    .line 2
    .line 3
    check-cast p1, Lcom/bumptech/glide/request/a;

    .line 4
    .line 5
    iget v1, p0, LD2/c;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/bumptech/glide/request/a;->onSizeReady(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeCallback(LD2/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setRequest(LC2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LD2/c;->f:LC2/c;

    .line 2
    .line 3
    return-void
.end method
