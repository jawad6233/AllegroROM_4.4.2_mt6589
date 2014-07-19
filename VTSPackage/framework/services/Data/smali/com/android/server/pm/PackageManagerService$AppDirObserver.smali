.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsPrivileged:Z

.field private final mIsRom:Z

.field private final mIsVendor:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "isrom"    # Z
    .param p5, "isPrivileged"    # Z
    .param p6, "isvendor"    # Z

    .prologue
    .line 6765
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6766
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6767
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 6768
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 6769
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    .line 6770
    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsVendor:Z

    .line 6771
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 24
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 6774
    const/16 v23, 0x0

    .line 6775
    .local v23, "removedPackage":Ljava/lang/String;
    const/16 v22, -0x1

    .line 6776
    .local v22, "removedAppId":I
    const/4 v10, 0x0

    .line 6777
    .local v10, "removedUsers":[I
    const/4 v12, 0x0

    .line 6778
    .local v12, "addedPackage":Ljava/lang/String;
    const/16 v17, -0x1

    .line 6779
    .local v17, "addedAppId":I
    const/16 v16, 0x0

    .line 6782
    .local v16, "addedUsers":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 6783
    const/16 v19, 0x0

    .line 6784
    .local v19, "fullPathStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 6785
    .local v3, "fullPath":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 6786
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6787
    .end local v3    # "fullPath":Ljava/io/File;
    .local v18, "fullPath":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v19

    move-object/from16 v3, v18

    .line 6790
    .end local v18    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    :cond_0
    :try_start_2
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_APP_DIR_OBSERVER:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6791
    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6793
    :cond_1
    # invokes: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$2200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6794
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_APP_DIR_OBSERVER:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6795
    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring change of non-package file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6796
    :cond_2
    monitor-exit v9

    .line 6881
    :cond_3
    :goto_0
    return-void

    .line 6801
    :cond_4
    # invokes: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$2300(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6802
    monitor-exit v9

    goto :goto_0

    .line 6866
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 6804
    :cond_5
    const/16 v20, 0x0

    .line 6805
    .local v20, "p":Landroid/content/pm/PackageParser$Package;
    const/16 v21, 0x0

    .line 6807
    .local v21, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6808
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    .line 6809
    if-eqz v20, :cond_6

    .line 6810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v0

    .line 6811
    if-eqz v21, :cond_e

    .line 6812
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageSettingBase;->queryInstalledUsers([IZ)[I

    move-result-object v10

    .line 6817
    :cond_6
    :goto_2
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    .line 6818
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6819
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_8

    .line 6820
    if-eqz v21, :cond_8

    .line 6821
    :try_start_5
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package disappeared: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6822
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 6823
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 6824
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v22, v0

    .line 6828
    :cond_8
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_c

    .line 6829
    if-nez v20, :cond_c

    .line 6830
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New file appeared: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6831
    :cond_9
    const/4 v4, 0x6

    .line 6832
    .local v4, "flags":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v2, :cond_a

    .line 6833
    or-int/lit8 v4, v4, 0x41

    .line 6835
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    if-eqz v2, :cond_a

    .line 6836
    or-int/lit16 v4, v4, 0x80

    .line 6839
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsVendor:Z

    if-eqz v2, :cond_b

    .line 6840
    or-int/lit16 v4, v4, 0x100

    .line 6842
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 6845
    if-eqz v20, :cond_c

    .line 6852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6853
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v6, v8, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 6855
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6856
    :try_start_7
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 6857
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    .line 6863
    .end local v4    # "flags":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6864
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6865
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 6866
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6868
    if-eqz v23, :cond_d

    .line 6869
    new-instance v7, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6870
    .local v7, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v22

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6871
    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6872
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v23

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 6875
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_d
    if-eqz v12, :cond_3

    .line 6876
    new-instance v7, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6877
    .restart local v7    # "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v17

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6878
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_0

    .line 6814
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_e
    :try_start_a
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    goto/16 :goto_2

    .line 6818
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 6853
    .restart local v4    # "flags":I
    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    .line 6855
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 6865
    .end local v4    # "flags":I
    :catchall_3
    move-exception v2

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 6866
    .end local v3    # "fullPath":Ljava/io/File;
    .end local v20    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "fullPath":Ljava/io/File;
    :catchall_4
    move-exception v2

    move-object/from16 v3, v18

    .end local v18    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    goto/16 :goto_1
.end method