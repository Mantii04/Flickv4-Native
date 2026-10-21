.class public final LH1/g;
.super LH1/d;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LH1/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LH1/f;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "NetworkMeteredCtrlr"

    .line 8
    .line 9
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "tagWithPrefix(\"NetworkMeteredCtrlr\")"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, LH1/g;->f:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(LI1/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI1/h;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "tracker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, LH1/d;-><init>(LI1/h;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public hasConstraint(LK1/E;)Z
    .locals 1

    .line 1
    const-string v0, "workSpec"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, LK1/E;->j:LB1/f;

    .line 7
    .line 8
    invoke-virtual {p1}, LB1/f;->getRequiredNetworkType()Landroidx/work/NetworkType;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Landroidx/work/NetworkType;->m:Landroidx/work/NetworkType;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public isConstrained(LG1/b;)Z
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-static {}, LB1/t;->get()LB1/t;

    move-result-object v0

    .line 4
    sget-object v1, LH1/g;->f:Ljava/lang/String;

    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    .line 5
    invoke-virtual {v0, v1, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, LG1/b;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 7
    :cond_1
    invoke-virtual {p1}, LG1/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LG1/b;->isMetered()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method

.method public bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, LG1/b;

    invoke-virtual {p0, p1}, LH1/g;->isConstrained(LG1/b;)Z

    move-result p1

    return p1
.end method
