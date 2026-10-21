.class public final La3/g;
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

.method public static create()La3/g;
    .locals 1

    .line 1
    sget-object v0, La3/f;->a:La3/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static dbName()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.google.android.datatransport.events"

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
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La3/g;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, La3/g;->dbName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
