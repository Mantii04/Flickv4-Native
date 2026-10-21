.class public final LQ3/m;
.super LQ3/n;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LQ3/m;->d:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(II)LQ3/n;
    .locals 0

    .line 2
    return-object p0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)LQ3/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "LQ3/n;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public compareFalseFirst(ZZ)LQ3/n;
    .locals 0

    .line 1
    return-object p0
.end method

.method public compareTrueFirst(ZZ)LQ3/n;
    .locals 0

    .line 1
    return-object p0
.end method

.method public result()I
    .locals 1

    .line 1
    iget v0, p0, LQ3/m;->d:I

    .line 2
    .line 3
    return v0
.end method
