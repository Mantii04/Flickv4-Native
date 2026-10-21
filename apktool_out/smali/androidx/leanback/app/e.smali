.class public final Landroidx/leanback/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm1/B0;

.field public final synthetic e:Landroidx/leanback/app/f;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/f;Lm1/B0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/app/e;->e:Landroidx/leanback/app/f;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/leanback/app/e;->b:Lm1/B0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/e;->e:Landroidx/leanback/app/f;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/app/f;->a:Landroidx/leanback/widget/B0;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/leanback/app/e;->b:Lm1/B0;

    .line 6
    .line 7
    check-cast v1, Landroidx/leanback/widget/b0;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/leanback/widget/N0;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/N0;->getRowViewHolder(Landroidx/leanback/widget/A0;)Landroidx/leanback/widget/M0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/B0;->run(Landroidx/leanback/widget/A0;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
