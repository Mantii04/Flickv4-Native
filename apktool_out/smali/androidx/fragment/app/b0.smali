.class public final Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/j0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/j0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/b;)V
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/j0;

    iget-object v1, v0, Landroidx/fragment/app/i0;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/f0;

    .line 3
    const-string v2, "FragmentManager"

    if-nez v1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No Activities were started for result for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v3, v1, Landroidx/fragment/app/f0;->b:Ljava/lang/String;

    iget-object v0, v0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/t0;->c(Ljava/lang/String;)Landroidx/fragment/app/C;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Activity result delivered for unknown Fragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/b;->getResultCode()I

    move-result v2

    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/b;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 9
    iget v1, v1, Landroidx/fragment/app/f0;->e:I

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/C;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/activity/result/b;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/b0;->onActivityResult(Landroidx/activity/result/b;)V

    return-void
.end method
