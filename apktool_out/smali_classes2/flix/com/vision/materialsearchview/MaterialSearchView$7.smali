.class Lflix/com/vision/materialsearchview/MaterialSearchView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$7;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$7;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 2
    .line 3
    iget-object p3, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p3, p4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->y:Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    iget-object p3, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->t:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iput-object p3, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->z:Landroid/text/Editable;

    .line 28
    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_0

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->b(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p4, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->w:Landroid/widget/ImageButton;

    .line 40
    .line 41
    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p3, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->w:Landroid/widget/ImageButton;

    .line 46
    .line 47
    const/16 p4, 0x8

    .line 48
    .line 49
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    const/4 p3, 0x1

    .line 53
    invoke-virtual {p2, p3}, Lflix/com/vision/materialsearchview/MaterialSearchView;->b(Z)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p2, p2, Lflix/com/vision/materialsearchview/MaterialSearchView;->A:Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p2, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method
