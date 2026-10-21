.class public abstract synthetic Le6/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final blackhole()Le6/J;
    .locals 1

    .line 1
    new-instance v0, Le6/h;

    .line 2
    .line 3
    invoke-direct {v0}, Le6/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final buffer(Le6/J;)Le6/m;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le6/D;

    invoke-direct {v0, p0}, Le6/D;-><init>(Le6/J;)V

    return-object v0
.end method

.method public static final buffer(Le6/L;)Le6/n;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le6/F;

    invoke-direct {v0, p0}, Le6/F;-><init>(Le6/L;)V

    return-object v0
.end method
