.class public final Lm3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LG3/a;


# instance fields
.field public final a:LG3/c;

.field public final b:LG3/c;

.field public final c:LG3/c;

.field public final d:LG3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LG3/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LG3/a;-><init>(F)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lm3/g;->e:LG3/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LG3/c;LG3/c;LG3/c;LG3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm3/g;->a:LG3/c;

    .line 5
    .line 6
    iput-object p3, p0, Lm3/g;->b:LG3/c;

    .line 7
    .line 8
    iput-object p4, p0, Lm3/g;->c:LG3/c;

    .line 9
    .line 10
    iput-object p2, p0, Lm3/g;->d:LG3/c;

    .line 11
    .line 12
    return-void
.end method

.method public static bottom(Lm3/g;)Lm3/g;
    .locals 3

    .line 1
    new-instance v0, Lm3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lm3/g;->d:LG3/c;

    .line 4
    .line 5
    iget-object p0, p0, Lm3/g;->c:LG3/c;

    .line 6
    .line 7
    sget-object v2, Lm3/g;->e:LG3/a;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1, v2, p0}, Lm3/g;-><init>(LG3/c;LG3/c;LG3/c;LG3/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static end(Lm3/g;Landroid/view/View;)Lm3/g;
    .locals 0

    .line 1
    invoke-static {p1}, Lx3/T;->isLayoutRtl(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lm3/g;->left(Lm3/g;)Lm3/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lm3/g;->right(Lm3/g;)Lm3/g;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static left(Lm3/g;)Lm3/g;
    .locals 3

    .line 1
    new-instance v0, Lm3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lm3/g;->a:LG3/c;

    .line 4
    .line 5
    sget-object v2, Lm3/g;->e:LG3/a;

    .line 6
    .line 7
    iget-object p0, p0, Lm3/g;->d:LG3/c;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, v2, v2}, Lm3/g;-><init>(LG3/c;LG3/c;LG3/c;LG3/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static right(Lm3/g;)Lm3/g;
    .locals 3

    .line 1
    new-instance v0, Lm3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lm3/g;->b:LG3/c;

    .line 4
    .line 5
    iget-object p0, p0, Lm3/g;->c:LG3/c;

    .line 6
    .line 7
    sget-object v2, Lm3/g;->e:LG3/a;

    .line 8
    .line 9
    invoke-direct {v0, v2, v2, v1, p0}, Lm3/g;-><init>(LG3/c;LG3/c;LG3/c;LG3/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static start(Lm3/g;Landroid/view/View;)Lm3/g;
    .locals 0

    .line 1
    invoke-static {p1}, Lx3/T;->isLayoutRtl(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lm3/g;->right(Lm3/g;)Lm3/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lm3/g;->left(Lm3/g;)Lm3/g;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static top(Lm3/g;)Lm3/g;
    .locals 3

    .line 1
    new-instance v0, Lm3/g;

    .line 2
    .line 3
    iget-object v1, p0, Lm3/g;->a:LG3/c;

    .line 4
    .line 5
    sget-object v2, Lm3/g;->e:LG3/a;

    .line 6
    .line 7
    iget-object p0, p0, Lm3/g;->b:LG3/c;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, v2}, Lm3/g;-><init>(LG3/c;LG3/c;LG3/c;LG3/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
