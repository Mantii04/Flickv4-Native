.class public final Landroidx/leanback/widget/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/leanback/widget/U0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/U0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/T0;->b:Landroidx/leanback/widget/U0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/T0;->b:Landroidx/leanback/widget/U0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/U0;->a:Landroidx/leanback/widget/SearchBar;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroidx/leanback/widget/SearchBar;->s:Z

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->e:Landroidx/leanback/widget/SpeechOrbView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
