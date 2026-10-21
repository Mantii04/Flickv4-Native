.class public final Landroidx/leanback/widget/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/leanback/widget/SearchEditText;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/b1;->b:Landroidx/leanback/widget/SearchEditText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/b1;->b:Landroidx/leanback/widget/SearchEditText;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/SearchEditText;->q:Landroidx/leanback/widget/c1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/S0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/leanback/widget/S0;->onKeyboardDismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
