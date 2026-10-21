.class public final Landroidx/mediarouter/app/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lf1/U;

.field public final synthetic e:Landroidx/mediarouter/app/N;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/N;Lf1/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/M;->e:Landroidx/mediarouter/app/N;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/M;->b:Lf1/U;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/M;->e:Landroidx/mediarouter/app/N;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/N;->y:Landroidx/mediarouter/app/O;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/mediarouter/app/O;->j:Landroidx/mediarouter/app/Q;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/M;->b:Lf1/U;

    .line 8
    .line 9
    iput-object v1, v0, Landroidx/mediarouter/app/Q;->w:Lf1/U;

    .line 10
    .line 11
    invoke-virtual {v1}, Lf1/U;->select()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroidx/mediarouter/app/N;->v:Landroid/widget/ImageView;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroidx/mediarouter/app/N;->w:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
