.class public abstract Ly1/r;
.super Ly1/q;
.source "SourceFile"


# instance fields
.field public a:[LD/f;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ly1/r;->a:[LD/f;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ly1/r;->c:I

    return-void
.end method

.method public constructor <init>(Ly1/r;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ly1/r;->a:[LD/f;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ly1/r;->c:I

    .line 7
    iget-object v0, p1, Ly1/r;->b:Ljava/lang/String;

    iput-object v0, p0, Ly1/r;->b:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Ly1/r;->a:[LD/f;

    invoke-static {p1}, LD/g;->deepCopyNodes([LD/f;)[LD/f;

    move-result-object p1

    iput-object p1, p0, Ly1/r;->a:[LD/f;

    return-void
.end method


# virtual methods
.method public getPathData()[LD/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/r;->a:[LD/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setPathData([LD/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/r;->a:[LD/f;

    .line 2
    .line 3
    invoke-static {v0, p1}, LD/g;->canMorph([LD/f;[LD/f;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, LD/g;->deepCopyNodes([LD/f;)[LD/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ly1/r;->a:[LD/f;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Ly1/r;->a:[LD/f;

    .line 17
    .line 18
    invoke-static {v0, p1}, LD/g;->updateNodes([LD/f;[LD/f;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/r;->a:[LD/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p1}, LD/f;->nodesToPath([LD/f;Landroid/graphics/Path;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
