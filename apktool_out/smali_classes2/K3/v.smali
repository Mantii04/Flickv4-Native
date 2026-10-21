.class public final LK3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:LK3/x;


# direct methods
.method public constructor <init>(LK3/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK3/v;->b:LK3/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, LK3/v;->b:LK3/x;

    .line 2
    .line 3
    iget-object v0, p1, LK3/x;->m:Ll/l1;

    .line 4
    .line 5
    if-gez p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ll/l1;->getSelectedItem()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-static {p1, v1}, LK3/x;->a(LK3/x;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    if-gez p3, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    move-object v4, p2

    .line 35
    move v5, p3

    .line 36
    move-wide v6, p4

    .line 37
    goto :goto_3

    .line 38
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ll/l1;->getSelectedView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0}, Ll/l1;->getSelectedItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {v0}, Ll/l1;->getSelectedItemId()J

    .line 47
    .line 48
    .line 49
    move-result-wide p4

    .line 50
    goto :goto_1

    .line 51
    :goto_3
    invoke-virtual {v0}, Ll/l1;->getListView()Landroid/widget/ListView;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0}, Ll/l1;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
