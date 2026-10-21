.class public abstract Lm1/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lm1/c0;

.field public final b:Ljava/util/ArrayList;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lm1/b0;->a:Lm1/c0;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lm1/b0;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-wide/16 v0, 0x78

    .line 15
    .line 16
    iput-wide v0, p0, Lm1/b0;->c:J

    .line 17
    .line 18
    iput-wide v0, p0, Lm1/b0;->d:J

    .line 19
    .line 20
    const-wide/16 v0, 0xfa

    .line 21
    .line 22
    iput-wide v0, p0, Lm1/b0;->e:J

    .line 23
    .line 24
    iput-wide v0, p0, Lm1/b0;->f:J

    .line 25
    .line 26
    return-void
.end method

.method public static a(Lm1/B0;)I
    .locals 4

    .line 1
    iget v0, p0, Lm1/B0;->j:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0xe

    .line 4
    .line 5
    invoke-virtual {p0}, Lm1/B0;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x4

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    and-int/2addr v0, v3

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lm1/B0;->getOldPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Lm1/B0;->getAbsoluteAdapterPosition()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    if-eq p0, v2, :cond_1

    .line 28
    .line 29
    if-eq v0, p0, :cond_1

    .line 30
    .line 31
    or-int/lit16 p0, v1, 0x800

    .line 32
    .line 33
    return p0

    .line 34
    :cond_1
    return v1
.end method


# virtual methods
.method public abstract animateAppearance(Lm1/B0;Lm1/a0;Lm1/a0;)Z
.end method

.method public abstract animateChange(Lm1/B0;Lm1/B0;Lm1/a0;Lm1/a0;)Z
.end method

.method public abstract animateDisappearance(Lm1/B0;Lm1/a0;Lm1/a0;)Z
.end method

.method public abstract animatePersistence(Lm1/B0;Lm1/a0;Lm1/a0;)Z
.end method

.method public abstract canReuseUpdatedViewHolder(Lm1/B0;)Z
.end method

.method public canReuseUpdatedViewHolder(Lm1/B0;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/B0;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/b0;->canReuseUpdatedViewHolder(Lm1/B0;)Z

    move-result p1

    return p1
.end method

.method public final dispatchAnimationFinished(Lm1/B0;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lm1/b0;->onAnimationFinished(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm1/b0;->a:Lm1/c0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lm1/c0;->onAnimationFinished(Lm1/B0;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/b0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/ClassCastException;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public abstract endAnimation(Lm1/B0;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm1/b0;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm1/b0;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm1/b0;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm1/b0;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public obtainHolderInfo()Lm1/a0;
    .locals 1

    .line 1
    new-instance v0, Lm1/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lm1/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public onAnimationFinished(Lm1/B0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public recordPostLayoutInformation(Lm1/x0;Lm1/B0;)Lm1/a0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm1/b0;->obtainHolderInfo()Lm1/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lm1/a0;->setFrom(Lm1/B0;)Lm1/a0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public recordPreLayoutInformation(Lm1/x0;Lm1/B0;ILjava/util/List;)Lm1/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/x0;",
            "Lm1/B0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lm1/a0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm1/b0;->obtainHolderInfo()Lm1/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lm1/a0;->setFrom(Lm1/B0;)Lm1/a0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public abstract runPendingAnimations()V
.end method
