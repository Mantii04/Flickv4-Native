.class public final Le4/b;
.super Lh4/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:Le4/g;


# direct methods
.method public constructor <init>(Le4/g;ILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le4/b;->c:Le4/g;

    .line 2
    .line 3
    iput-object p3, p0, Le4/b;->a:Landroid/view/View;

    .line 4
    .line 5
    iput p2, p0, Le4/b;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Lh4/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lh4/b;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lh4/c;->onAnimationEnd(Lh4/b;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Le4/b;->c:Le4/g;

    .line 5
    .line 6
    iget-object v0, p0, Le4/b;->a:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    filled-new-array {v2, v3}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lh4/w;->ofInt([I)Lh4/w;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p1, Le4/g;->j:J

    .line 26
    .line 27
    invoke-virtual {v3, v4, v5}, Lh4/w;->setDuration(J)Lh4/w;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Le4/c;

    .line 32
    .line 33
    invoke-direct {v4, p1, v2}, Le4/c;-><init>(Le4/g;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lh4/b;->addListener(Lh4/a;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Le4/d;

    .line 40
    .line 41
    invoke-direct {v2, v0, v1}, Le4/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lh4/w;->addUpdateListener(Lh4/v;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v2, Le4/f;

    .line 50
    .line 51
    iget v4, p0, Le4/b;->b:I

    .line 52
    .line 53
    invoke-direct {v2, p1, v4, v0}, Le4/f;-><init>(Le4/g;ILandroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lh4/w;->start()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
