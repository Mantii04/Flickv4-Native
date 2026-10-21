.class public final Landroidx/leanback/app/a;
.super Landroidx/leanback/widget/u0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/leanback/app/c;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/a;->a:Landroidx/leanback/app/c;

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
    iget-object p1, p0, Landroidx/leanback/app/a;->a:Landroidx/leanback/app/c;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/app/c;->k0:Landroidx/leanback/app/b;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/leanback/app/b;->a:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iput p3, p1, Landroidx/leanback/app/c;->i0:I

    .line 10
    .line 11
    check-cast p1, Landroidx/leanback/app/h;

    .line 12
    .line 13
    iget-object p3, p1, Landroidx/leanback/app/h;->m0:Landroidx/leanback/widget/b0;

    .line 14
    .line 15
    if-ne p3, p2, :cond_0

    .line 16
    .line 17
    iget v0, p1, Landroidx/leanback/app/h;->n0:I

    .line 18
    .line 19
    if-eq v0, p4, :cond_2

    .line 20
    .line 21
    :cond_0
    iput p4, p1, Landroidx/leanback/app/h;->n0:I

    .line 22
    .line 23
    const/4 p4, 0x0

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-static {p3, p4, p4}, Landroidx/leanback/app/h;->j(Landroidx/leanback/widget/b0;ZZ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    check-cast p2, Landroidx/leanback/widget/b0;

    .line 30
    .line 31
    iput-object p2, p1, Landroidx/leanback/app/h;->m0:Landroidx/leanback/widget/b0;

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-static {p2, p1, p4}, Landroidx/leanback/app/h;->j(Landroidx/leanback/widget/b0;ZZ)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method
