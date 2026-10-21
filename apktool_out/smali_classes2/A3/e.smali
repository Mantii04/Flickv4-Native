.class public final LA3/e;
.super Lc0/i;
.source "SourceFile"


# instance fields
.field public final synthetic a:LA3/k;


# direct methods
.method public constructor <init>(LA3/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA3/e;->a:LA3/k;

    .line 2
    .line 3
    invoke-direct {p0}, Lc0/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LA3/e;->a:LA3/k;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, LA3/k;->E:Lz3/f;

    .line 6
    .line 7
    invoke-virtual {p1}, Lz3/f;->stopListeningForBackCallbacks()V

    .line 8
    .line 9
    .line 10
    iget-boolean p1, v0, LA3/k;->A:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, v0, LA3/k;->z:I

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, v0, LA3/k;->z:I

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, p1, v1}, LA3/k;->d(II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, LA3/e;->a:LA3/k;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LA3/k;->E:Lz3/f;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v1, LA3/d;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v0, v2}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
