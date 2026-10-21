.class Lflix/com/vision/materialsearchview/MaterialSearchView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$4;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$4;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lflix/com/vision/materialsearchview/MaterialSearchView;->j:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
