.class public final LP5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP5/g;


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public b:LP5/h;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "matcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, LP5/i;->a:Ljava/util/regex/Matcher;

    .line 15
    .line 16
    new-instance p1, Lkotlin/text/MatcherMatchResult$groups$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lkotlin/text/MatcherMatchResult$groups$1;-><init>(LP5/i;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final access$getMatchResult(LP5/i;)Ljava/util/regex/MatchResult;
    .locals 0

    .line 1
    iget-object p0, p0, LP5/i;->a:Ljava/util/regex/Matcher;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getGroupValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LP5/i;->b:LP5/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LP5/h;

    .line 6
    .line 7
    invoke-direct {v0, p0}, LP5/h;-><init>(LP5/i;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LP5/i;->b:LP5/h;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, LP5/i;->b:LP5/h;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LP5/i;->a:Ljava/util/regex/Matcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "group(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
