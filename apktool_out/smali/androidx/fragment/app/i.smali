.class public final Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/j;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/j;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/j;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/fragment/app/j;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/j;->d:Landroidx/fragment/app/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/q;->a()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
