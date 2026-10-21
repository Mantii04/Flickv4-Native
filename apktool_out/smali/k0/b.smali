.class public final Lk0/b;
.super Landroidx/leanback/widget/u0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk0/e;


# direct methods
.method public constructor <init>(Lk0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b;->a:Lk0/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/u0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Lm1/B0;II)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 2
    .line 3
    iget-object p4, p0, Lk0/b;->a:Lk0/e;

    .line 4
    .line 5
    iget-object v0, p4, Lk0/e;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p4, p1}, Lk0/e;->c(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p4, Lk0/e;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lk0/f;

    .line 23
    .line 24
    invoke-virtual {p2}, Lk0/f;->getMinValue()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    add-int/2addr p2, p3

    .line 29
    invoke-virtual {p4, p1, p2}, Lk0/e;->onColumnValueChanged(II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
