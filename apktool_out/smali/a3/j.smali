.class public final La3/j;
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

.method public static create()La3/j;
    .locals 1

    .line 1
    sget-object v0, La3/i;->a:La3/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static schemaVersion()I
    .locals 1

    .line 1
    sget v0, La3/v;->j:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-static {}, La3/j;->schemaVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La3/j;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
