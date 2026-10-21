.class public final synthetic Landroidx/media3/datasource/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# virtual methods
.method public final createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/datasource/PlaceholderDataSource;->a()Landroidx/media3/datasource/PlaceholderDataSource;

    move-result-object v0

    return-object v0
.end method
