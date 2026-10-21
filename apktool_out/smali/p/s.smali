.class public abstract Lp/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp/s;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getDELETED$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lp/s;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final commonGet(Lp/r;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lp/r;",
            "I)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp/r;->b:[I

    iget v1, p0, Lp/r;->f:I

    invoke-static {v0, v1, p1}, Lq/a;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2
    iget-object p0, p0, Lp/r;->e:[Ljava/lang/Object;

    aget-object p0, p0, p1

    sget-object p1, Lp/s;->a:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final commonGet(Lp/r;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lp/r;",
            "ITE;)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lp/r;->b:[I

    iget v1, p0, Lp/r;->f:I

    invoke-static {v0, v1, p1}, Lq/a;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_1

    .line 4
    iget-object p0, p0, Lp/r;->e:[Ljava/lang/Object;

    aget-object p0, p0, p1

    sget-object p1, Lp/s;->a:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method
