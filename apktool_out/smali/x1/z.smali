.class public final Lx1/z;
.super Lx1/y;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lp/g;

.field public final synthetic b:Lx1/A;


# direct methods
.method public constructor <init>(Lx1/A;Lp/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx1/z;->b:Lx1/A;

    .line 2
    .line 3
    iput-object p2, p0, Lx1/z;->a:Lp/g;

    .line 4
    .line 5
    invoke-direct {p0}, Lx1/y;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx1/z;->b:Lx1/A;

    .line 2
    .line 3
    iget-object v0, v0, Lx1/A;->e:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v1, p0, Lx1/z;->a:Lp/g;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
