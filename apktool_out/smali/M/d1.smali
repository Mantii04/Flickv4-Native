.class public final LM/d1;
.super LM/c1;
.source "SourceFile"


# static fields
.field public static final q:LM/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, LL1/g;->j()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, LM/h1;->toWindowInsetsCompat(Landroid/view/WindowInsets;)LM/h1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LM/d1;->q:LM/h1;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(LM/h1;LM/d1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LM/c1;-><init>(LM/h1;LM/c1;)V

    return-void
.end method

.method public constructor <init>(LM/h1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LM/c1;-><init>(LM/h1;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getInsets(I)LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/Z0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, LM/g1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, LL1/g;->h(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, LD/c;->toCompatInsets(Landroid/graphics/Insets;)LD/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
