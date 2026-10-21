.class public final Landroidx/mediarouter/app/K;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Landroid/widget/TextView;


# virtual methods
.method public bindHeaderView(Landroidx/mediarouter/app/L;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/app/L;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroidx/mediarouter/app/K;->u:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
