.class public final Lc3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create()Lc3/c;
    .locals 1

    .line 1
    sget-object v0, Lc3/b;->a:Lc3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static eventClock()Lc3/a;
    .locals 2

    .line 1
    new-instance v0, Lc3/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lc3/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    .line 8
    invoke-static {v0, v1}, LU2/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lc3/a;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public get()Lc3/a;
    .locals 1

    .line 2
    invoke-static {}, Lc3/c;->eventClock()Lc3/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc3/c;->get()Lc3/a;

    move-result-object v0

    return-object v0
.end method
