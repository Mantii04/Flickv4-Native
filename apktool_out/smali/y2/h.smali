.class public final Ly2/h;
.super LD2/c;
.source "SourceFile"


# instance fields
.field public final j:Landroid/os/Handler;

.field public final m:I

.field public final n:J

.field public p:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, LD2/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/h;->j:Landroid/os/Handler;

    .line 5
    .line 6
    iput p2, p0, Ly2/h;->m:I

    .line 7
    .line 8
    iput-wide p3, p0, Ly2/h;->n:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ly2/h;->p:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;LE2/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "LE2/d;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Ly2/h;->p:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    iget-object p2, p0, Ly2/h;->j:Landroid/os/Handler;

    invoke-virtual {p2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Ly2/h;->n:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;LE2/d;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Ly2/h;->onResourceReady(Landroid/graphics/Bitmap;LE2/d;)V

    return-void
.end method
