.class public final Le4/a;
.super Lm1/m0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le4/g;


# direct methods
.method public constructor <init>(Le4/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le4/a;->a:Le4/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, Le4/a;->a:Le4/g;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Le4/g;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    return-void
.end method
