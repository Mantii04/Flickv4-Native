.class public final Landroidx/mediarouter/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/app/p0;


# instance fields
.field public final synthetic a:Lf1/U;

.field public final synthetic b:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;Lf1/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/k;->b:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/k;->a:Lf1/U;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/k;->b:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/D;->U:Ljava/util/HashSet;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/mediarouter/app/k;->a:Lf1/U;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
