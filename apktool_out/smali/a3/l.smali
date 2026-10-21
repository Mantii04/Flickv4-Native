.class public final La3/l;
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

.method public static create()La3/l;
    .locals 1

    .line 1
    sget-object v0, La3/k;->a:La3/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public static storeConfig()La3/e;
    .locals 2

    .line 1
    sget-object v0, La3/e;->a:La3/a;

    .line 2
    .line 3
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    .line 5
    invoke-static {v0, v1}, LU2/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, La3/e;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public get()La3/e;
    .locals 1

    .line 2
    invoke-static {}, La3/l;->storeConfig()La3/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La3/l;->get()La3/e;

    move-result-object v0

    return-object v0
.end method
