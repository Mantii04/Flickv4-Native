.class public final Lp1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "to"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lp1/g;->b:I

    .line 15
    .line 16
    iput p2, p0, Lp1/g;->e:I

    .line 17
    .line 18
    iput-object p3, p0, Lp1/g;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lp1/g;->j:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp1/g;

    invoke-virtual {p0, p1}, Lp1/g;->compareTo(Lp1/g;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lp1/g;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lp1/g;->b:I

    iget v1, p0, Lp1/g;->b:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 3
    iget v0, p0, Lp1/g;->e:I

    iget p1, p1, Lp1/g;->e:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/g;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lp1/g;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/g;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
