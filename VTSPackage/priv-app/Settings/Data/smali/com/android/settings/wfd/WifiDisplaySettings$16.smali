.class Lcom/android/settings/wfd/WifiDisplaySettings$16;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 661
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 666
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 671
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 676
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 681
    return-void
.end method