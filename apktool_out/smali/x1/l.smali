.class public final Lx1/l;
.super Lx1/y;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Lx1/n;


# direct methods
.method public constructor <init>(Lx1/n;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx1/l;->g:Lx1/n;

    .line 2
    .line 3
    iput-object p2, p0, Lx1/l;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lx1/l;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p4, p0, Lx1/l;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lx1/l;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p6, p0, Lx1/l;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p7, p0, Lx1/l;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p0}, Lx1/y;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/e;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/e;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lx1/l;->g:Lx1/n;

    .line 3
    .line 4
    iget-object v1, p0, Lx1/l;->a:Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lx1/l;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, p1}, Lx1/n;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lx1/l;->c:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lx1/l;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lx1/n;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lx1/l;->e:Ljava/lang/Object;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lx1/l;->f:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, p1}, Lx1/n;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method
