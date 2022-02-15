#
# Copyright (c) 2015-2016 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


module OvirtSDK4
  
  class ActionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'action'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'activate', object.activate) unless object.activate.nil?
      Writer.write_boolean(writer, 'allow_partial_import', object.allow_partial_import) unless object.allow_partial_import.nil?
      Writer.write_boolean(writer, 'async', object.async) unless object.async.nil?
      DiskAttachmentWriter.write_one(object.attachment, writer, 'attachment') unless object.attachment.nil?
      AuthorizedKeyWriter.write_one(object.authorized_key, writer, 'authorized_key') unless object.authorized_key.nil?
      Writer.write_string(writer, 'auto_pinning_policy', object.auto_pinning_policy) unless object.auto_pinning_policy.nil?
      GlusterBrickWriter.write_many(object.bricks, writer, 'brick', 'bricks') unless object.bricks.nil?
      CertificateWriter.write_many(object.certificates, writer, 'certificate', 'certificates') unless object.certificates.nil?
      Writer.write_boolean(writer, 'check_connectivity', object.check_connectivity) unless object.check_connectivity.nil?
      Writer.write_boolean(writer, 'clone', object.clone) unless object.clone.nil?
      Writer.write_boolean(writer, 'clone_permissions', object.clone_permissions) unless object.clone_permissions.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      Writer.write_boolean(writer, 'collapse_snapshots', object.collapse_snapshots) unless object.collapse_snapshots.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_boolean(writer, 'commit_on_success', object.commit_on_success) unless object.commit_on_success.nil?
      StorageConnectionWriter.write_one(object.connection, writer, 'connection') unless object.connection.nil?
      Writer.write_integer(writer, 'connectivity_timeout', object.connectivity_timeout) unless object.connectivity_timeout.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      Writer.write_boolean(writer, 'deploy_hosted_engine', object.deploy_hosted_engine) unless object.deploy_hosted_engine.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      GlusterVolumeProfileDetailsWriter.write_one(object.details, writer, 'details') unless object.details.nil?
      Writer.write_string(writer, 'directory', object.directory) unless object.directory.nil?
      Writer.write_boolean(writer, 'discard_snapshots', object.discard_snapshots) unless object.discard_snapshots.nil?
      IscsiDetailsWriter.write_many(object.discovered_targets, writer, 'iscsi_details', 'discovered_targets') unless object.discovered_targets.nil?
      DiskWriter.write_one(object.disk, writer, 'disk') unless object.disk.nil?
      DiskProfileWriter.write_one(object.disk_profile, writer, 'disk_profile') unless object.disk_profile.nil?
      DiskWriter.write_many(object.disks, writer, 'disk', 'disks') unless object.disks.nil?
      Writer.write_boolean(writer, 'exclusive', object.exclusive) unless object.exclusive.nil?
      FaultWriter.write_one(object.fault, writer, 'fault') unless object.fault.nil?
      Writer.write_string(writer, 'fence_type', object.fence_type) unless object.fence_type.nil?
      Writer.write_string(writer, 'filename', object.filename) unless object.filename.nil?
      Writer.write_boolean(writer, 'filter', object.filter) unless object.filter.nil?
      Writer.write_boolean(writer, 'fix_layout', object.fix_layout) unless object.fix_layout.nil?
      Writer.write_boolean(writer, 'force', object.force) unless object.force.nil?
      GracePeriodWriter.write_one(object.grace_period, writer, 'grace_period') unless object.grace_period.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      Writer.write_string(writer, 'image', object.image) unless object.image.nil?
      ImageTransferWriter.write_one(object.image_transfer, writer, 'image_transfer') unless object.image_transfer.nil?
      Writer.write_boolean(writer, 'import_as_template', object.import_as_template) unless object.import_as_template.nil?
      Writer.write_boolean(writer, 'is_attached', object.is_attached) unless object.is_attached.nil?
      IscsiDetailsWriter.write_one(object.iscsi, writer, 'iscsi') unless object.iscsi.nil?
      unless object.iscsi_targets.nil?
        writer.write_start('iscsi_targets')
        object.iscsi_targets.each do |item|
          Writer.write_string(writer, 'iscsi_target', item) unless item.nil?
        end
        writer.write_end
      end
      JobWriter.write_one(object.job, writer, 'job') unless object.job.nil?
      StorageDomainLeaseWriter.write_one(object.lease, writer, 'lease') unless object.lease.nil?
      LogicalUnitWriter.write_many(object.logical_units, writer, 'logical_unit', 'logical_units') unless object.logical_units.nil?
      Writer.write_boolean(writer, 'maintenance_after_restart', object.maintenance_after_restart) unless object.maintenance_after_restart.nil?
      Writer.write_boolean(writer, 'maintenance_enabled', object.maintenance_enabled) unless object.maintenance_enabled.nil?
      Writer.write_boolean(writer, 'migrate_vms_in_affinity_closure', object.migrate_vms_in_affinity_closure) unless object.migrate_vms_in_affinity_closure.nil?
      HostNicWriter.write_many(object.modified_bonds, writer, 'host_nic', 'modified_bonds') unless object.modified_bonds.nil?
      NetworkLabelWriter.write_many(object.modified_labels, writer, 'network_label', 'modified_labels') unless object.modified_labels.nil?
      NetworkAttachmentWriter.write_many(object.modified_network_attachments, writer, 'network_attachment', 'modified_network_attachments') unless object.modified_network_attachments.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'optimize_cpu_settings', object.optimize_cpu_settings) unless object.optimize_cpu_settings.nil?
      OptionWriter.write_one(object.option, writer, 'option') unless object.option.nil?
      Writer.write_boolean(writer, 'pause', object.pause) unless object.pause.nil?
      PermissionWriter.write_one(object.permission, writer, 'permission') unless object.permission.nil?
      PowerManagementWriter.write_one(object.power_management, writer, 'power_management') unless object.power_management.nil?
      ProxyTicketWriter.write_one(object.proxy_ticket, writer, 'proxy_ticket') unless object.proxy_ticket.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      Writer.write_string(writer, 'reason', object.reason) unless object.reason.nil?
      Writer.write_boolean(writer, 'reassign_bad_macs', object.reassign_bad_macs) unless object.reassign_bad_macs.nil?
      Writer.write_boolean(writer, 'reboot', object.reboot) unless object.reboot.nil?
      RegistrationConfigurationWriter.write_one(object.registration_configuration, writer, 'registration_configuration') unless object.registration_configuration.nil?
      Writer.write_string(writer, 'remote_viewer_connection_file', object.remote_viewer_connection_file) unless object.remote_viewer_connection_file.nil?
      HostNicWriter.write_many(object.removed_bonds, writer, 'host_nic', 'removed_bonds') unless object.removed_bonds.nil?
      NetworkLabelWriter.write_many(object.removed_labels, writer, 'network_label', 'removed_labels') unless object.removed_labels.nil?
      NetworkAttachmentWriter.write_many(object.removed_network_attachments, writer, 'network_attachment', 'removed_network_attachments') unless object.removed_network_attachments.nil?
      Writer.write_string(writer, 'resolution_type', object.resolution_type) unless object.resolution_type.nil?
      Writer.write_boolean(writer, 'restore_memory', object.restore_memory) unless object.restore_memory.nil?
      Writer.write_string(writer, 'root_password', object.root_password) unless object.root_password.nil?
      Writer.write_boolean(writer, 'seal', object.seal) unless object.seal.nil?
      SnapshotWriter.write_one(object.snapshot, writer, 'snapshot') unless object.snapshot.nil?
      HostWriter.write_one(object.source_host, writer, 'source_host') unless object.source_host.nil?
      SshWriter.write_one(object.ssh, writer, 'ssh') unless object.ssh.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_boolean(writer, 'stop_gluster_service', object.stop_gluster_service) unless object.stop_gluster_service.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      StorageDomainWriter.write_many(object.storage_domains, writer, 'storage_domain', 'storage_domains') unless object.storage_domains.nil?
      Writer.write_boolean(writer, 'succeeded', object.succeeded) unless object.succeeded.nil?
      NetworkAttachmentWriter.write_many(object.synchronized_network_attachments, writer, 'network_attachment', 'synchronized_network_attachments') unless object.synchronized_network_attachments.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      TicketWriter.write_one(object.ticket, writer, 'ticket') unless object.ticket.nil?
      Writer.write_integer(writer, 'timeout', object.timeout) unless object.timeout.nil?
      Writer.write_boolean(writer, 'undeploy_hosted_engine', object.undeploy_hosted_engine) unless object.undeploy_hosted_engine.nil?
      Writer.write_string(writer, 'upgrade_action', object.upgrade_action) unless object.upgrade_action.nil?
      Writer.write_boolean(writer, 'use_cloud_init', object.use_cloud_init) unless object.use_cloud_init.nil?
      Writer.write_boolean(writer, 'use_ignition', object.use_ignition) unless object.use_ignition.nil?
      Writer.write_boolean(writer, 'use_initialization', object.use_initialization) unless object.use_initialization.nil?
      Writer.write_boolean(writer, 'use_sysprep', object.use_sysprep) unless object.use_sysprep.nil?
      HostNicVirtualFunctionsConfigurationWriter.write_one(object.virtual_functions_configuration, writer, 'virtual_functions_configuration') unless object.virtual_functions_configuration.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VnicProfileMappingWriter.write_many(object.vnic_profile_mappings, writer, 'vnic_profile_mapping', 'vnic_profile_mappings') unless object.vnic_profile_mappings.nil?
      Writer.write_boolean(writer, 'volatile', object.volatile) unless object.volatile.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'action'
      plural ||= 'actions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class AffinityGroupWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'affinity_group'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'enforcing', object.enforcing) unless object.enforcing.nil?
      AffinityRuleWriter.write_one(object.hosts_rule, writer, 'hosts_rule') unless object.hosts_rule.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'positive', object.positive) unless object.positive.nil?
      Writer.write_decimal(writer, 'priority', object.priority) unless object.priority.nil?
      AffinityRuleWriter.write_one(object.vms_rule, writer, 'vms_rule') unless object.vms_rule.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      AffinityLabelWriter.write_many(object.host_labels, writer, 'affinity_label', 'host_labels') unless object.host_labels.nil?
      HostWriter.write_many(object.hosts, writer, 'host', 'hosts') unless object.hosts.nil?
      AffinityLabelWriter.write_many(object.vm_labels, writer, 'affinity_label', 'vm_labels') unless object.vm_labels.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'affinity_group'
      plural ||= 'affinity_groups'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class AffinityLabelWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'affinity_label'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'has_implicit_affinity_group', object.has_implicit_affinity_group) unless object.has_implicit_affinity_group.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'read_only', object.read_only) unless object.read_only.nil?
      HostWriter.write_many(object.hosts, writer, 'host', 'hosts') unless object.hosts.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'affinity_label'
      plural ||= 'affinity_labels'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class AffinityRuleWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'affinity_rule'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_boolean(writer, 'enforcing', object.enforcing) unless object.enforcing.nil?
      Writer.write_boolean(writer, 'positive', object.positive) unless object.positive.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'affinity_rule'
      plural ||= 'affinity_rules'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class AgentWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'agent'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_boolean(writer, 'concurrent', object.concurrent) unless object.concurrent.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'encrypt_options', object.encrypt_options) unless object.encrypt_options.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      OptionWriter.write_many(object.options, writer, 'option', 'options') unless object.options.nil?
      Writer.write_integer(writer, 'order', object.order) unless object.order.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'agent'
      plural ||= 'agents'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class AgentConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'agent_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'broker_type', object.broker_type) unless object.broker_type.nil?
      Writer.write_string(writer, 'network_mappings', object.network_mappings) unless object.network_mappings.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'agent_configuration'
      plural ||= 'agent_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ApiWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'api'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      ProductInfoWriter.write_one(object.product_info, writer, 'product_info') unless object.product_info.nil?
      SpecialObjectsWriter.write_one(object.special_objects, writer, 'special_objects') unless object.special_objects.nil?
      ApiSummaryWriter.write_one(object.summary, writer, 'summary') unless object.summary.nil?
      Writer.write_date(writer, 'time', object.time) unless object.time.nil?
      UserWriter.write_one(object.authenticated_user, writer, 'authenticated_user') unless object.authenticated_user.nil?
      UserWriter.write_one(object.effective_user, writer, 'effective_user') unless object.effective_user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'api'
      plural ||= 'apis'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ApiSummaryWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'api_summary'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      ApiSummaryItemWriter.write_one(object.hosts, writer, 'hosts') unless object.hosts.nil?
      ApiSummaryItemWriter.write_one(object.storage_domains, writer, 'storage_domains') unless object.storage_domains.nil?
      ApiSummaryItemWriter.write_one(object.users, writer, 'users') unless object.users.nil?
      ApiSummaryItemWriter.write_one(object.vms, writer, 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'api_summary'
      plural ||= 'api_summaries'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ApiSummaryItemWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'api_summary_item'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'active', object.active) unless object.active.nil?
      Writer.write_integer(writer, 'total', object.total) unless object.total.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'api_summary_item'
      plural ||= 'api_summary_items'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ApplicationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'application'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'application'
      plural ||= 'applications'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class AuthorizedKeyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'authorized_key'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'key', object.key) unless object.key.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'authorized_key'
      plural ||= 'authorized_keys'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BackupWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'backup'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_date(writer, 'creation_date', object.creation_date) unless object.creation_date.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'from_checkpoint_id', object.from_checkpoint_id) unless object.from_checkpoint_id.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'phase', object.phase) unless object.phase.nil?
      Writer.write_string(writer, 'to_checkpoint_id', object.to_checkpoint_id) unless object.to_checkpoint_id.nil?
      DiskWriter.write_many(object.disks, writer, 'disk', 'disks') unless object.disks.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'backup'
      plural ||= 'backups'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BalanceWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'balance'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      SchedulingPolicyWriter.write_one(object.scheduling_policy, writer, 'scheduling_policy') unless object.scheduling_policy.nil?
      SchedulingPolicyUnitWriter.write_one(object.scheduling_policy_unit, writer, 'scheduling_policy_unit') unless object.scheduling_policy_unit.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'balance'
      plural ||= 'balances'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BiosWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'bios'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      BootMenuWriter.write_one(object.boot_menu, writer, 'boot_menu') unless object.boot_menu.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'bios'
      plural ||= 'bioss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BlockStatisticWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'block_statistic'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'block_statistic'
      plural ||= 'block_statistics'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BondingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'bonding'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      MacWriter.write_one(object.ad_partner_mac, writer, 'ad_partner_mac') unless object.ad_partner_mac.nil?
      OptionWriter.write_many(object.options, writer, 'option', 'options') unless object.options.nil?
      HostNicWriter.write_many(object.slaves, writer, 'host_nic', 'slaves') unless object.slaves.nil?
      HostNicWriter.write_one(object.active_slave, writer, 'active_slave') unless object.active_slave.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'bonding'
      plural ||= 'bondings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BookmarkWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'bookmark'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'bookmark'
      plural ||= 'bookmarks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BootWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'boot'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      unless object.devices.nil?
        writer.write_start('devices')
        object.devices.each do |item|
          Writer.write_string(writer, 'device', item) unless item.nil?
        end
        writer.write_end
      end
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'boot'
      plural ||= 'boots'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BootMenuWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'boot_menu'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'boot_menu'
      plural ||= 'boot_menus'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class BrickProfileDetailWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'brick_profile_detail'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      ProfileDetailWriter.write_many(object.profile_details, writer, 'profile_detail', 'profile_details') unless object.profile_details.nil?
      GlusterBrickWriter.write_one(object.brick, writer, 'brick') unless object.brick.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'brick_profile_detail'
      plural ||= 'brick_profile_details'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CdromWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cdrom'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      FileWriter.write_one(object.file, writer, 'file') unless object.file.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cdrom'
      plural ||= 'cdroms'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CertificateWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'certificate'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content', object.content) unless object.content.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'organization', object.organization) unless object.organization.nil?
      Writer.write_string(writer, 'subject', object.subject) unless object.subject.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'certificate'
      plural ||= 'certificates'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CheckpointWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'checkpoint'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_date(writer, 'creation_date', object.creation_date) unless object.creation_date.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'parent_id', object.parent_id) unless object.parent_id.nil?
      DiskWriter.write_many(object.disks, writer, 'disk', 'disks') unless object.disks.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'checkpoint'
      plural ||= 'checkpoints'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CloudInitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cloud_init'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      AuthorizedKeyWriter.write_many(object.authorized_keys, writer, 'authorized_key', 'authorized_keys') unless object.authorized_keys.nil?
      FileWriter.write_many(object.files, writer, 'file', 'files') unless object.files.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      NetworkConfigurationWriter.write_one(object.network_configuration, writer, 'network_configuration') unless object.network_configuration.nil?
      Writer.write_boolean(writer, 'regenerate_ssh_keys', object.regenerate_ssh_keys) unless object.regenerate_ssh_keys.nil?
      Writer.write_string(writer, 'timezone', object.timezone) unless object.timezone.nil?
      UserWriter.write_many(object.users, writer, 'user', 'users') unless object.users.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cloud_init'
      plural ||= 'cloud_inits'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ClusterWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cluster'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'ballooning_enabled', object.ballooning_enabled) unless object.ballooning_enabled.nil?
      Writer.write_string(writer, 'bios_type', object.bios_type) unless object.bios_type.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      PropertyWriter.write_many(object.custom_scheduling_policy_properties, writer, 'property', 'custom_scheduling_policy_properties') unless object.custom_scheduling_policy_properties.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      ErrorHandlingWriter.write_one(object.error_handling, writer, 'error_handling') unless object.error_handling.nil?
      FencingPolicyWriter.write_one(object.fencing_policy, writer, 'fencing_policy') unless object.fencing_policy.nil?
      Writer.write_string(writer, 'fips_mode', object.fips_mode) unless object.fips_mode.nil?
      Writer.write_string(writer, 'firewall_type', object.firewall_type) unless object.firewall_type.nil?
      Writer.write_boolean(writer, 'gluster_service', object.gluster_service) unless object.gluster_service.nil?
      Writer.write_string(writer, 'gluster_tuned_profile', object.gluster_tuned_profile) unless object.gluster_tuned_profile.nil?
      Writer.write_boolean(writer, 'ha_reservation', object.ha_reservation) unless object.ha_reservation.nil?
      KsmWriter.write_one(object.ksm, writer, 'ksm') unless object.ksm.nil?
      Writer.write_integer(writer, 'log_max_memory_used_threshold', object.log_max_memory_used_threshold) unless object.log_max_memory_used_threshold.nil?
      Writer.write_string(writer, 'log_max_memory_used_threshold_type', object.log_max_memory_used_threshold_type) unless object.log_max_memory_used_threshold_type.nil?
      Writer.write_boolean(writer, 'maintenance_reason_required', object.maintenance_reason_required) unless object.maintenance_reason_required.nil?
      MemoryPolicyWriter.write_one(object.memory_policy, writer, 'memory_policy') unless object.memory_policy.nil?
      MigrationOptionsWriter.write_one(object.migration, writer, 'migration') unless object.migration.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'optional_reason', object.optional_reason) unless object.optional_reason.nil?
      unless object.required_rng_sources.nil?
        writer.write_start('required_rng_sources')
        object.required_rng_sources.each do |item|
          Writer.write_string(writer, 'required_rng_source', item) unless item.nil?
        end
        writer.write_end
      end
      SerialNumberWriter.write_one(object.serial_number, writer, 'serial_number') unless object.serial_number.nil?
      VersionWriter.write_many(object.supported_versions, writer, 'version', 'supported_versions') unless object.supported_versions.nil?
      Writer.write_string(writer, 'switch_type', object.switch_type) unless object.switch_type.nil?
      Writer.write_boolean(writer, 'threads_as_cores', object.threads_as_cores) unless object.threads_as_cores.nil?
      Writer.write_boolean(writer, 'trusted_service', object.trusted_service) unless object.trusted_service.nil?
      Writer.write_boolean(writer, 'tunnel_migration', object.tunnel_migration) unless object.tunnel_migration.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      Writer.write_boolean(writer, 'virt_service', object.virt_service) unless object.virt_service.nil?
      Writer.write_boolean(writer, 'vnc_encryption', object.vnc_encryption) unless object.vnc_encryption.nil?
      AffinityGroupWriter.write_many(object.affinity_groups, writer, 'affinity_group', 'affinity_groups') unless object.affinity_groups.nil?
      CpuProfileWriter.write_many(object.cpu_profiles, writer, 'cpu_profile', 'cpu_profiles') unless object.cpu_profiles.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      ClusterFeatureWriter.write_many(object.enabled_features, writer, 'cluster_feature', 'enabled_features') unless object.enabled_features.nil?
      ExternalProviderWriter.write_many(object.external_network_providers, writer, 'external_provider', 'external_network_providers') unless object.external_network_providers.nil?
      GlusterHookWriter.write_many(object.gluster_hooks, writer, 'gluster_hook', 'gluster_hooks') unless object.gluster_hooks.nil?
      GlusterVolumeWriter.write_many(object.gluster_volumes, writer, 'gluster_volume', 'gluster_volumes') unless object.gluster_volumes.nil?
      MacPoolWriter.write_one(object.mac_pool, writer, 'mac_pool') unless object.mac_pool.nil?
      NetworkWriter.write_one(object.management_network, writer, 'management_network') unless object.management_network.nil?
      NetworkFilterWriter.write_many(object.network_filters, writer, 'network_filter', 'network_filters') unless object.network_filters.nil?
      NetworkWriter.write_many(object.networks, writer, 'network', 'networks') unless object.networks.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      SchedulingPolicyWriter.write_one(object.scheduling_policy, writer, 'scheduling_policy') unless object.scheduling_policy.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cluster'
      plural ||= 'clusters'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ClusterFeatureWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cluster_feature'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      ClusterLevelWriter.write_one(object.cluster_level, writer, 'cluster_level') unless object.cluster_level.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cluster_feature'
      plural ||= 'cluster_features'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ClusterLevelWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cluster_level'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      CpuTypeWriter.write_many(object.cpu_types, writer, 'cpu_type', 'cpu_types') unless object.cpu_types.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PermitWriter.write_many(object.permits, writer, 'permit', 'permits') unless object.permits.nil?
      ClusterFeatureWriter.write_many(object.cluster_features, writer, 'cluster_feature', 'cluster_features') unless object.cluster_features.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cluster_level'
      plural ||= 'cluster_levels'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'data', object.data) unless object.data.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'configuration'
      plural ||= 'configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ConsoleWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'console'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'console'
      plural ||= 'consoles'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CoreWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'core'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'index', object.index) unless object.index.nil?
      Writer.write_integer(writer, 'socket', object.socket) unless object.socket.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'core'
      plural ||= 'cores'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CpuWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cpu'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'architecture', object.architecture) unless object.architecture.nil?
      CoreWriter.write_many(object.cores, writer, 'core', 'cores') unless object.cores.nil?
      CpuTuneWriter.write_one(object.cpu_tune, writer, 'cpu_tune') unless object.cpu_tune.nil?
      Writer.write_integer(writer, 'level', object.level) unless object.level.nil?
      Writer.write_string(writer, 'mode', object.mode) unless object.mode.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_decimal(writer, 'speed', object.speed) unless object.speed.nil?
      CpuTopologyWriter.write_one(object.topology, writer, 'topology') unless object.topology.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cpu'
      plural ||= 'cpus'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CpuProfileWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cpu_profile'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QosWriter.write_one(object.qos, writer, 'qos') unless object.qos.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cpu_profile'
      plural ||= 'cpu_profiles'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CpuTopologyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cpu_topology'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'cores', object.cores) unless object.cores.nil?
      Writer.write_integer(writer, 'sockets', object.sockets) unless object.sockets.nil?
      Writer.write_integer(writer, 'threads', object.threads) unless object.threads.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cpu_topology'
      plural ||= 'cpu_topologies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CpuTuneWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cpu_tune'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      VcpuPinWriter.write_many(object.vcpu_pins, writer, 'vcpu_pin', 'vcpu_pins') unless object.vcpu_pins.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cpu_tune'
      plural ||= 'cpu_tunes'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CpuTypeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'cpu_type'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'architecture', object.architecture) unless object.architecture.nil?
      Writer.write_integer(writer, 'level', object.level) unless object.level.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'cpu_type'
      plural ||= 'cpu_types'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class CustomPropertyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'custom_property'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'regexp', object.regexp) unless object.regexp.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'custom_property'
      plural ||= 'custom_properties'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DataCenterWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'data_center'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'local', object.local) unless object.local.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'quota_mode', object.quota_mode) unless object.quota_mode.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_format', object.storage_format) unless object.storage_format.nil?
      VersionWriter.write_many(object.supported_versions, writer, 'version', 'supported_versions') unless object.supported_versions.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      ClusterWriter.write_many(object.clusters, writer, 'cluster', 'clusters') unless object.clusters.nil?
      IscsiBondWriter.write_many(object.iscsi_bonds, writer, 'iscsi_bond', 'iscsi_bonds') unless object.iscsi_bonds.nil?
      MacPoolWriter.write_one(object.mac_pool, writer, 'mac_pool') unless object.mac_pool.nil?
      NetworkWriter.write_many(object.networks, writer, 'network', 'networks') unless object.networks.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QosWriter.write_many(object.qoss, writer, 'qos', 'qoss') unless object.qoss.nil?
      QuotaWriter.write_many(object.quotas, writer, 'quota', 'quotas') unless object.quotas.nil?
      StorageDomainWriter.write_many(object.storage_domains, writer, 'storage_domain', 'storage_domains') unless object.storage_domains.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'data_center'
      plural ||= 'data_centers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DeviceWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'device'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'device'
      plural ||= 'devices'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DiskWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'disk'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'active', object.active) unless object.active.nil?
      Writer.write_integer(writer, 'actual_size', object.actual_size) unless object.actual_size.nil?
      Writer.write_string(writer, 'alias', object.alias_) unless object.alias_.nil?
      Writer.write_string(writer, 'backup', object.backup) unless object.backup.nil?
      Writer.write_string(writer, 'backup_mode', object.backup_mode) unless object.backup_mode.nil?
      Writer.write_boolean(writer, 'bootable', object.bootable) unless object.bootable.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content_type', object.content_type) unless object.content_type.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'external_disk', object.external_disk) unless object.external_disk.nil?
      Writer.write_string(writer, 'format', object.format) unless object.format.nil?
      Writer.write_string(writer, 'image_id', object.image_id) unless object.image_id.nil?
      Writer.write_integer(writer, 'initial_size', object.initial_size) unless object.initial_size.nil?
      Writer.write_string(writer, 'interface', object.interface) unless object.interface.nil?
      Writer.write_string(writer, 'logical_name', object.logical_name) unless object.logical_name.nil?
      HostStorageWriter.write_one(object.lun_storage, writer, 'lun_storage') unless object.lun_storage.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'propagate_errors', object.propagate_errors) unless object.propagate_errors.nil?
      Writer.write_integer(writer, 'provisioned_size', object.provisioned_size) unless object.provisioned_size.nil?
      Writer.write_string(writer, 'qcow_version', object.qcow_version) unless object.qcow_version.nil?
      Writer.write_boolean(writer, 'read_only', object.read_only) unless object.read_only.nil?
      Writer.write_string(writer, 'sgio', object.sgio) unless object.sgio.nil?
      Writer.write_boolean(writer, 'shareable', object.shareable) unless object.shareable.nil?
      Writer.write_boolean(writer, 'sparse', object.sparse) unless object.sparse.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_type', object.storage_type) unless object.storage_type.nil?
      Writer.write_integer(writer, 'total_size', object.total_size) unless object.total_size.nil?
      Writer.write_boolean(writer, 'uses_scsi_reservation', object.uses_scsi_reservation) unless object.uses_scsi_reservation.nil?
      Writer.write_boolean(writer, 'wipe_after_delete', object.wipe_after_delete) unless object.wipe_after_delete.nil?
      DiskProfileWriter.write_one(object.disk_profile, writer, 'disk_profile') unless object.disk_profile.nil?
      DiskSnapshotWriter.write_many(object.disk_snapshots, writer, 'disk_snapshot', 'disk_snapshots') unless object.disk_snapshots.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      OpenStackVolumeTypeWriter.write_one(object.openstack_volume_type, writer, 'openstack_volume_type') unless object.openstack_volume_type.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      SnapshotWriter.write_one(object.snapshot, writer, 'snapshot') unless object.snapshot.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      StorageDomainWriter.write_many(object.storage_domains, writer, 'storage_domain', 'storage_domains') unless object.storage_domains.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'disk'
      plural ||= 'disks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DiskAttachmentWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'disk_attachment'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'active', object.active) unless object.active.nil?
      Writer.write_boolean(writer, 'bootable', object.bootable) unless object.bootable.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'interface', object.interface) unless object.interface.nil?
      Writer.write_string(writer, 'logical_name', object.logical_name) unless object.logical_name.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'pass_discard', object.pass_discard) unless object.pass_discard.nil?
      Writer.write_boolean(writer, 'read_only', object.read_only) unless object.read_only.nil?
      Writer.write_boolean(writer, 'uses_scsi_reservation', object.uses_scsi_reservation) unless object.uses_scsi_reservation.nil?
      DiskWriter.write_one(object.disk, writer, 'disk') unless object.disk.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'disk_attachment'
      plural ||= 'disk_attachments'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DiskProfileWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'disk_profile'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QosWriter.write_one(object.qos, writer, 'qos') unless object.qos.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'disk_profile'
      plural ||= 'disk_profiles'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DiskSnapshotWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'disk_snapshot'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'active', object.active) unless object.active.nil?
      Writer.write_integer(writer, 'actual_size', object.actual_size) unless object.actual_size.nil?
      Writer.write_string(writer, 'alias', object.alias_) unless object.alias_.nil?
      Writer.write_string(writer, 'backup', object.backup) unless object.backup.nil?
      Writer.write_string(writer, 'backup_mode', object.backup_mode) unless object.backup_mode.nil?
      Writer.write_boolean(writer, 'bootable', object.bootable) unless object.bootable.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content_type', object.content_type) unless object.content_type.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'external_disk', object.external_disk) unless object.external_disk.nil?
      Writer.write_string(writer, 'format', object.format) unless object.format.nil?
      Writer.write_string(writer, 'image_id', object.image_id) unless object.image_id.nil?
      Writer.write_integer(writer, 'initial_size', object.initial_size) unless object.initial_size.nil?
      Writer.write_string(writer, 'interface', object.interface) unless object.interface.nil?
      Writer.write_string(writer, 'logical_name', object.logical_name) unless object.logical_name.nil?
      HostStorageWriter.write_one(object.lun_storage, writer, 'lun_storage') unless object.lun_storage.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'propagate_errors', object.propagate_errors) unless object.propagate_errors.nil?
      Writer.write_integer(writer, 'provisioned_size', object.provisioned_size) unless object.provisioned_size.nil?
      Writer.write_string(writer, 'qcow_version', object.qcow_version) unless object.qcow_version.nil?
      Writer.write_boolean(writer, 'read_only', object.read_only) unless object.read_only.nil?
      Writer.write_string(writer, 'sgio', object.sgio) unless object.sgio.nil?
      Writer.write_boolean(writer, 'shareable', object.shareable) unless object.shareable.nil?
      Writer.write_boolean(writer, 'sparse', object.sparse) unless object.sparse.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_type', object.storage_type) unless object.storage_type.nil?
      Writer.write_integer(writer, 'total_size', object.total_size) unless object.total_size.nil?
      Writer.write_boolean(writer, 'uses_scsi_reservation', object.uses_scsi_reservation) unless object.uses_scsi_reservation.nil?
      Writer.write_boolean(writer, 'wipe_after_delete', object.wipe_after_delete) unless object.wipe_after_delete.nil?
      DiskWriter.write_one(object.disk, writer, 'disk') unless object.disk.nil?
      DiskProfileWriter.write_one(object.disk_profile, writer, 'disk_profile') unless object.disk_profile.nil?
      DiskSnapshotWriter.write_many(object.disk_snapshots, writer, 'disk_snapshot', 'disk_snapshots') unless object.disk_snapshots.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      OpenStackVolumeTypeWriter.write_one(object.openstack_volume_type, writer, 'openstack_volume_type') unless object.openstack_volume_type.nil?
      DiskSnapshotWriter.write_one(object.parent, writer, 'parent') unless object.parent.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      SnapshotWriter.write_one(object.snapshot, writer, 'snapshot') unless object.snapshot.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      StorageDomainWriter.write_many(object.storage_domains, writer, 'storage_domain', 'storage_domains') unless object.storage_domains.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'disk_snapshot'
      plural ||= 'disk_snapshots'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DisplayWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'display'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_boolean(writer, 'allow_override', object.allow_override) unless object.allow_override.nil?
      CertificateWriter.write_one(object.certificate, writer, 'certificate') unless object.certificate.nil?
      Writer.write_boolean(writer, 'copy_paste_enabled', object.copy_paste_enabled) unless object.copy_paste_enabled.nil?
      Writer.write_string(writer, 'disconnect_action', object.disconnect_action) unless object.disconnect_action.nil?
      Writer.write_boolean(writer, 'file_transfer_enabled', object.file_transfer_enabled) unless object.file_transfer_enabled.nil?
      Writer.write_string(writer, 'keyboard_layout', object.keyboard_layout) unless object.keyboard_layout.nil?
      Writer.write_integer(writer, 'monitors', object.monitors) unless object.monitors.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'proxy', object.proxy) unless object.proxy.nil?
      Writer.write_integer(writer, 'secure_port', object.secure_port) unless object.secure_port.nil?
      Writer.write_boolean(writer, 'single_qxl_pci', object.single_qxl_pci) unless object.single_qxl_pci.nil?
      Writer.write_boolean(writer, 'smartcard_enabled', object.smartcard_enabled) unless object.smartcard_enabled.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'display'
      plural ||= 'displays'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DnsWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'dns'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      HostWriter.write_many(object.search_domains, writer, 'host', 'search_domains') unless object.search_domains.nil?
      HostWriter.write_many(object.servers, writer, 'host', 'servers') unless object.servers.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'dns'
      plural ||= 'dnss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DnsResolverConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'dns_resolver_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      unless object.name_servers.nil?
        writer.write_start('name_servers')
        object.name_servers.each do |item|
          Writer.write_string(writer, 'name_server', item) unless item.nil?
        end
        writer.write_end
      end
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'dns_resolver_configuration'
      plural ||= 'dns_resolver_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class DomainWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'domain'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      GroupWriter.write_many(object.groups, writer, 'group', 'groups') unless object.groups.nil?
      UserWriter.write_many(object.users, writer, 'user', 'users') unless object.users.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'domain'
      plural ||= 'domains'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class EntityProfileDetailWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'entity_profile_detail'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      ProfileDetailWriter.write_many(object.profile_details, writer, 'profile_detail', 'profile_details') unless object.profile_details.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'entity_profile_detail'
      plural ||= 'entity_profile_details'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ErrorHandlingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'error_handling'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'on_error', object.on_error) unless object.on_error.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'error_handling'
      plural ||= 'error_handlings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class EventWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'event'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_integer(writer, 'code', object.code) unless object.code.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'correlation_id', object.correlation_id) unless object.correlation_id.nil?
      Writer.write_string(writer, 'custom_data', object.custom_data) unless object.custom_data.nil?
      Writer.write_integer(writer, 'custom_id', object.custom_id) unless object.custom_id.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'flood_rate', object.flood_rate) unless object.flood_rate.nil?
      Writer.write_integer(writer, 'index', object.index) unless object.index.nil?
      Writer.write_boolean(writer, 'log_on_host', object.log_on_host) unless object.log_on_host.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'origin', object.origin) unless object.origin.nil?
      Writer.write_string(writer, 'severity', object.severity) unless object.severity.nil?
      Writer.write_date(writer, 'time', object.time) unless object.time.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'event'
      plural ||= 'events'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class EventSubscriptionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'event_subscription'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'event', object.event) unless object.event.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'notification_method', object.notification_method) unless object.notification_method.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'event_subscription'
      plural ||= 'event_subscriptions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalComputeResourceWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_compute_resource'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'provider', object.provider) unless object.provider.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'user', object.user) unless object.user.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_compute_resource'
      plural ||= 'external_compute_resources'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalDiscoveredHostWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_discovered_host'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'ip', object.ip) unless object.ip.nil?
      Writer.write_string(writer, 'last_report', object.last_report) unless object.last_report.nil?
      Writer.write_string(writer, 'mac', object.mac) unless object.mac.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'subnet_name', object.subnet_name) unless object.subnet_name.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_discovered_host'
      plural ||= 'external_discovered_hosts'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalHostWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_host'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_host'
      plural ||= 'external_hosts'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalHostGroupWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_host_group'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'architecture_name', object.architecture_name) unless object.architecture_name.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'domain_name', object.domain_name) unless object.domain_name.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'operating_system_name', object.operating_system_name) unless object.operating_system_name.nil?
      Writer.write_string(writer, 'subnet_name', object.subnet_name) unless object.subnet_name.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_host_group'
      plural ||= 'external_host_groups'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalHostProviderWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_host_provider'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'authentication_url', object.authentication_url) unless object.authentication_url.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_boolean(writer, 'requires_authentication', object.requires_authentication) unless object.requires_authentication.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      CertificateWriter.write_many(object.certificates, writer, 'certificate', 'certificates') unless object.certificates.nil?
      ExternalComputeResourceWriter.write_many(object.compute_resources, writer, 'external_compute_resource', 'compute_resources') unless object.compute_resources.nil?
      ExternalDiscoveredHostWriter.write_many(object.discovered_hosts, writer, 'external_discovered_host', 'discovered_hosts') unless object.discovered_hosts.nil?
      ExternalHostGroupWriter.write_many(object.host_groups, writer, 'external_host_group', 'host_groups') unless object.host_groups.nil?
      HostWriter.write_many(object.hosts, writer, 'host', 'hosts') unless object.hosts.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_host_provider'
      plural ||= 'external_host_providers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalNetworkProviderConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_network_provider_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      ExternalProviderWriter.write_one(object.external_network_provider, writer, 'external_network_provider') unless object.external_network_provider.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_network_provider_configuration'
      plural ||= 'external_network_provider_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalProviderWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_provider'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'authentication_url', object.authentication_url) unless object.authentication_url.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_boolean(writer, 'requires_authentication', object.requires_authentication) unless object.requires_authentication.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_provider'
      plural ||= 'external_providers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ExternalVmImportWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'external_vm_import'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_string(writer, 'provider', object.provider) unless object.provider.nil?
      Writer.write_boolean(writer, 'sparse', object.sparse) unless object.sparse.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      CpuProfileWriter.write_one(object.cpu_profile, writer, 'cpu_profile') unless object.cpu_profile.nil?
      FileWriter.write_one(object.drivers_iso, writer, 'drivers_iso') unless object.drivers_iso.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'external_vm_import'
      plural ||= 'external_vm_imports'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class FaultWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'fault'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'detail', object.detail) unless object.detail.nil?
      Writer.write_string(writer, 'reason', object.reason) unless object.reason.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'fault'
      plural ||= 'faults'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class FencingPolicyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'fencing_policy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      SkipIfConnectivityBrokenWriter.write_one(object.skip_if_connectivity_broken, writer, 'skip_if_connectivity_broken') unless object.skip_if_connectivity_broken.nil?
      Writer.write_boolean(writer, 'skip_if_gluster_bricks_up', object.skip_if_gluster_bricks_up) unless object.skip_if_gluster_bricks_up.nil?
      Writer.write_boolean(writer, 'skip_if_gluster_quorum_not_met', object.skip_if_gluster_quorum_not_met) unless object.skip_if_gluster_quorum_not_met.nil?
      SkipIfSdActiveWriter.write_one(object.skip_if_sd_active, writer, 'skip_if_sd_active') unless object.skip_if_sd_active.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'fencing_policy'
      plural ||= 'fencing_policies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class FileWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'file'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content', object.content) unless object.content.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'file'
      plural ||= 'files'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class FilterWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'filter'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'position', object.position) unless object.position.nil?
      SchedulingPolicyUnitWriter.write_one(object.scheduling_policy_unit, writer, 'scheduling_policy_unit') unless object.scheduling_policy_unit.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'filter'
      plural ||= 'filters'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class FloppyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'floppy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      FileWriter.write_one(object.file, writer, 'file') unless object.file.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'floppy'
      plural ||= 'floppies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class FopStatisticWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'fop_statistic'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'fop_statistic'
      plural ||= 'fop_statistics'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterBrickWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'brick'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'brick_dir', object.brick_dir) unless object.brick_dir.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'device', object.device) unless object.device.nil?
      Writer.write_string(writer, 'fs_name', object.fs_name) unless object.fs_name.nil?
      GlusterClientWriter.write_many(object.gluster_clients, writer, 'gluster_client', 'gluster_clients') unless object.gluster_clients.nil?
      GlusterMemoryPoolWriter.write_many(object.memory_pools, writer, 'memory_pool', 'memory_pools') unless object.memory_pools.nil?
      Writer.write_string(writer, 'mnt_options', object.mnt_options) unless object.mnt_options.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'pid', object.pid) unless object.pid.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'server_id', object.server_id) unless object.server_id.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      GlusterVolumeWriter.write_one(object.gluster_volume, writer, 'gluster_volume') unless object.gluster_volume.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'brick'
      plural ||= 'bricks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterBrickAdvancedDetailsWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'gluster_brick_advanced_details'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'device', object.device) unless object.device.nil?
      Writer.write_string(writer, 'fs_name', object.fs_name) unless object.fs_name.nil?
      GlusterClientWriter.write_many(object.gluster_clients, writer, 'gluster_client', 'gluster_clients') unless object.gluster_clients.nil?
      GlusterMemoryPoolWriter.write_many(object.memory_pools, writer, 'memory_pool', 'memory_pools') unless object.memory_pools.nil?
      Writer.write_string(writer, 'mnt_options', object.mnt_options) unless object.mnt_options.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'pid', object.pid) unless object.pid.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'gluster_brick_advanced_details'
      plural ||= 'gluster_brick_advanced_detailss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterBrickMemoryInfoWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'brick_memoryinfo'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      GlusterMemoryPoolWriter.write_many(object.memory_pools, writer, 'memory_pool', 'memory_pools') unless object.memory_pools.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'brick_memoryinfo'
      plural ||= 'gluster_brick_memory_infos'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterClientWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'gluster_client'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'bytes_read', object.bytes_read) unless object.bytes_read.nil?
      Writer.write_integer(writer, 'bytes_written', object.bytes_written) unless object.bytes_written.nil?
      Writer.write_integer(writer, 'client_port', object.client_port) unless object.client_port.nil?
      Writer.write_string(writer, 'host_name', object.host_name) unless object.host_name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'gluster_client'
      plural ||= 'gluster_clients'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterHookWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'gluster_hook'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'checksum', object.checksum) unless object.checksum.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_integer(writer, 'conflict_status', object.conflict_status) unless object.conflict_status.nil?
      Writer.write_string(writer, 'conflicts', object.conflicts) unless object.conflicts.nil?
      Writer.write_string(writer, 'content', object.content) unless object.content.nil?
      Writer.write_string(writer, 'content_type', object.content_type) unless object.content_type.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'gluster_command', object.gluster_command) unless object.gluster_command.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'stage', object.stage) unless object.stage.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      GlusterServerHookWriter.write_many(object.server_hooks, writer, 'server_hook', 'server_hooks') unless object.server_hooks.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'gluster_hook'
      plural ||= 'gluster_hooks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterMemoryPoolWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'memory_pool'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_integer(writer, 'alloc_count', object.alloc_count) unless object.alloc_count.nil?
      Writer.write_integer(writer, 'cold_count', object.cold_count) unless object.cold_count.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'hot_count', object.hot_count) unless object.hot_count.nil?
      Writer.write_integer(writer, 'max_alloc', object.max_alloc) unless object.max_alloc.nil?
      Writer.write_integer(writer, 'max_stdalloc', object.max_stdalloc) unless object.max_stdalloc.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'padded_size', object.padded_size) unless object.padded_size.nil?
      Writer.write_integer(writer, 'pool_misses', object.pool_misses) unless object.pool_misses.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'memory_pool'
      plural ||= 'memory_pools'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterServerHookWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'server_hook'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'checksum', object.checksum) unless object.checksum.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content_type', object.content_type) unless object.content_type.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'server_hook'
      plural ||= 'server_hooks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterVolumeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'gluster_volume'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'disperse_count', object.disperse_count) unless object.disperse_count.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      OptionWriter.write_many(object.options, writer, 'option', 'options') unless object.options.nil?
      Writer.write_integer(writer, 'redundancy_count', object.redundancy_count) unless object.redundancy_count.nil?
      Writer.write_integer(writer, 'replica_count', object.replica_count) unless object.replica_count.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_integer(writer, 'stripe_count', object.stripe_count) unless object.stripe_count.nil?
      unless object.transport_types.nil?
        writer.write_start('transport_types')
        object.transport_types.each do |item|
          Writer.write_string(writer, 'transport_type', item) unless item.nil?
        end
        writer.write_end
      end
      Writer.write_string(writer, 'volume_type', object.volume_type) unless object.volume_type.nil?
      GlusterBrickWriter.write_many(object.bricks, writer, 'brick', 'bricks') unless object.bricks.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'gluster_volume'
      plural ||= 'gluster_volumes'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GlusterVolumeProfileDetailsWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'gluster_volume_profile_details'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      BrickProfileDetailWriter.write_many(object.brick_profile_details, writer, 'brick_profile_detail', 'brick_profile_details') unless object.brick_profile_details.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      NfsProfileDetailWriter.write_many(object.nfs_profile_details, writer, 'nfs_profile_detail', 'nfs_profile_details') unless object.nfs_profile_details.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'gluster_volume_profile_details'
      plural ||= 'gluster_volume_profile_detailss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GracePeriodWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'grace_period'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'expiry', object.expiry) unless object.expiry.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'grace_period'
      plural ||= 'grace_periods'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GraphicsConsoleWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'graphics_console'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'protocol', object.protocol) unless object.protocol.nil?
      Writer.write_integer(writer, 'tls_port', object.tls_port) unless object.tls_port.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'graphics_console'
      plural ||= 'graphics_consoles'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GroupWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'group'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'domain_entry_id', object.domain_entry_id) unless object.domain_entry_id.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'namespace', object.namespace) unless object.namespace.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      RoleWriter.write_many(object.roles, writer, 'role', 'roles') unless object.roles.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'group'
      plural ||= 'groups'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class GuestOperatingSystemWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'guest_operating_system'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'architecture', object.architecture) unless object.architecture.nil?
      Writer.write_string(writer, 'codename', object.codename) unless object.codename.nil?
      Writer.write_string(writer, 'distribution', object.distribution) unless object.distribution.nil?
      Writer.write_string(writer, 'family', object.family) unless object.family.nil?
      KernelWriter.write_one(object.kernel, writer, 'kernel') unless object.kernel.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'guest_operating_system'
      plural ||= 'guest_operating_systems'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HardwareInformationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'hardware_information'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'family', object.family) unless object.family.nil?
      Writer.write_string(writer, 'manufacturer', object.manufacturer) unless object.manufacturer.nil?
      Writer.write_string(writer, 'product_name', object.product_name) unless object.product_name.nil?
      Writer.write_string(writer, 'serial_number', object.serial_number) unless object.serial_number.nil?
      unless object.supported_rng_sources.nil?
        writer.write_start('supported_rng_sources')
        object.supported_rng_sources.each do |item|
          Writer.write_string(writer, 'supported_rng_source', item) unless item.nil?
        end
        writer.write_end
      end
      Writer.write_string(writer, 'uuid', object.uuid) unless object.uuid.nil?
      Writer.write_string(writer, 'version', object.version) unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'hardware_information'
      plural ||= 'hardware_informations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HighAvailabilityWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'high_availability'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_integer(writer, 'priority', object.priority) unless object.priority.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'high_availability'
      plural ||= 'high_availabilities'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HookWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'hook'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'event_name', object.event_name) unless object.event_name.nil?
      Writer.write_string(writer, 'md5', object.md5) unless object.md5.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'hook'
      plural ||= 'hooks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'auto_numa_status', object.auto_numa_status) unless object.auto_numa_status.nil?
      CertificateWriter.write_one(object.certificate, writer, 'certificate') unless object.certificate.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      HostDevicePassthroughWriter.write_one(object.device_passthrough, writer, 'device_passthrough') unless object.device_passthrough.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      Writer.write_string(writer, 'external_status', object.external_status) unless object.external_status.nil?
      HardwareInformationWriter.write_one(object.hardware_information, writer, 'hardware_information') unless object.hardware_information.nil?
      HostedEngineWriter.write_one(object.hosted_engine, writer, 'hosted_engine') unless object.hosted_engine.nil?
      IscsiDetailsWriter.write_one(object.iscsi, writer, 'iscsi') unless object.iscsi.nil?
      Writer.write_string(writer, 'kdump_status', object.kdump_status) unless object.kdump_status.nil?
      KsmWriter.write_one(object.ksm, writer, 'ksm') unless object.ksm.nil?
      VersionWriter.write_one(object.libvirt_version, writer, 'libvirt_version') unless object.libvirt_version.nil?
      Writer.write_integer(writer, 'max_scheduling_memory', object.max_scheduling_memory) unless object.max_scheduling_memory.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'network_operation_in_progress', object.network_operation_in_progress) unless object.network_operation_in_progress.nil?
      Writer.write_boolean(writer, 'numa_supported', object.numa_supported) unless object.numa_supported.nil?
      OperatingSystemWriter.write_one(object.os, writer, 'os') unless object.os.nil?
      Writer.write_boolean(writer, 'override_iptables', object.override_iptables) unless object.override_iptables.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      PowerManagementWriter.write_one(object.power_management, writer, 'power_management') unless object.power_management.nil?
      Writer.write_string(writer, 'protocol', object.protocol) unless object.protocol.nil?
      Writer.write_boolean(writer, 'reinstallation_required', object.reinstallation_required) unless object.reinstallation_required.nil?
      Writer.write_string(writer, 'root_password', object.root_password) unless object.root_password.nil?
      SeLinuxWriter.write_one(object.se_linux, writer, 'se_linux') unless object.se_linux.nil?
      SpmWriter.write_one(object.spm, writer, 'spm') unless object.spm.nil?
      SshWriter.write_one(object.ssh, writer, 'ssh') unless object.ssh.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'status_detail', object.status_detail) unless object.status_detail.nil?
      VmSummaryWriter.write_one(object.summary, writer, 'summary') unless object.summary.nil?
      TransparentHugePagesWriter.write_one(object.transparent_huge_pages, writer, 'transparent_hugepages') unless object.transparent_huge_pages.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_boolean(writer, 'update_available', object.update_available) unless object.update_available.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      Writer.write_string(writer, 'vgpu_placement', object.vgpu_placement) unless object.vgpu_placement.nil?
      AffinityLabelWriter.write_many(object.affinity_labels, writer, 'affinity_label', 'affinity_labels') unless object.affinity_labels.nil?
      AgentWriter.write_many(object.agents, writer, 'agent', 'agents') unless object.agents.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      HostDeviceWriter.write_many(object.devices, writer, 'host_device', 'devices') unless object.devices.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      ExternalNetworkProviderConfigurationWriter.write_many(object.external_network_provider_configurations, writer, 'external_network_provider_configuration', 'external_network_provider_configurations') unless object.external_network_provider_configurations.nil?
      HookWriter.write_many(object.hooks, writer, 'hook', 'hooks') unless object.hooks.nil?
      KatelloErratumWriter.write_many(object.katello_errata, writer, 'katello_erratum', 'katello_errata') unless object.katello_errata.nil?
      NetworkAttachmentWriter.write_many(object.network_attachments, writer, 'network_attachment', 'network_attachments') unless object.network_attachments.nil?
      HostNicWriter.write_many(object.nics, writer, 'host_nic', 'nics') unless object.nics.nil?
      NumaNodeWriter.write_many(object.numa_nodes, writer, 'host_numa_node', 'host_numa_nodes') unless object.numa_nodes.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      StorageConnectionExtensionWriter.write_many(object.storage_connection_extensions, writer, 'storage_connection_extension', 'storage_connection_extensions') unless object.storage_connection_extensions.nil?
      HostStorageWriter.write_many(object.storages, writer, 'host_storage', 'storages') unless object.storages.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      UnmanagedNetworkWriter.write_many(object.unmanaged_networks, writer, 'unmanaged_network', 'unmanaged_networks') unless object.unmanaged_networks.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host'
      plural ||= 'hosts'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostDeviceWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host_device'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'capability', object.capability) unless object.capability.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'driver', object.driver) unless object.driver.nil?
      Writer.write_integer(writer, 'iommu_group', object.iommu_group) unless object.iommu_group.nil?
      MDevTypeWriter.write_many(object.m_dev_types, writer, 'm_dev_type', 'm_dev_types') unless object.m_dev_types.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      HostDeviceWriter.write_one(object.physical_function, writer, 'physical_function') unless object.physical_function.nil?
      Writer.write_boolean(writer, 'placeholder', object.placeholder) unless object.placeholder.nil?
      ProductWriter.write_one(object.product, writer, 'product') unless object.product.nil?
      VendorWriter.write_one(object.vendor, writer, 'vendor') unless object.vendor.nil?
      Writer.write_integer(writer, 'virtual_functions', object.virtual_functions) unless object.virtual_functions.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      HostDeviceWriter.write_one(object.parent_device, writer, 'parent_device') unless object.parent_device.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host_device'
      plural ||= 'host_devices'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostDevicePassthroughWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host_device_passthrough'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host_device_passthrough'
      plural ||= 'host_device_passthroughs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostNicWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host_nic'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_integer(writer, 'ad_aggregator_id', object.ad_aggregator_id) unless object.ad_aggregator_id.nil?
      Writer.write_string(writer, 'base_interface', object.base_interface) unless object.base_interface.nil?
      BondingWriter.write_one(object.bonding, writer, 'bonding') unless object.bonding.nil?
      Writer.write_string(writer, 'boot_protocol', object.boot_protocol) unless object.boot_protocol.nil?
      Writer.write_boolean(writer, 'bridged', object.bridged) unless object.bridged.nil?
      Writer.write_boolean(writer, 'check_connectivity', object.check_connectivity) unless object.check_connectivity.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_boolean(writer, 'custom_configuration', object.custom_configuration) unless object.custom_configuration.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      IpWriter.write_one(object.ip, writer, 'ip') unless object.ip.nil?
      IpWriter.write_one(object.ipv6, writer, 'ipv6') unless object.ipv6.nil?
      Writer.write_string(writer, 'ipv6_boot_protocol', object.ipv6_boot_protocol) unless object.ipv6_boot_protocol.nil?
      MacWriter.write_one(object.mac, writer, 'mac') unless object.mac.nil?
      Writer.write_integer(writer, 'mtu', object.mtu) unless object.mtu.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'override_configuration', object.override_configuration) unless object.override_configuration.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_integer(writer, 'speed', object.speed) unless object.speed.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      HostNicVirtualFunctionsConfigurationWriter.write_one(object.virtual_functions_configuration, writer, 'virtual_functions_configuration') unless object.virtual_functions_configuration.nil?
      VlanWriter.write_one(object.vlan, writer, 'vlan') unless object.vlan.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      NetworkWriter.write_one(object.network, writer, 'network') unless object.network.nil?
      NetworkLabelWriter.write_many(object.network_labels, writer, 'network_label', 'network_labels') unless object.network_labels.nil?
      HostNicWriter.write_one(object.physical_function, writer, 'physical_function') unless object.physical_function.nil?
      QosWriter.write_one(object.qos, writer, 'qos') unless object.qos.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host_nic'
      plural ||= 'host_nics'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostNicVirtualFunctionsConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host_nic_virtual_functions_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'all_networks_allowed', object.all_networks_allowed) unless object.all_networks_allowed.nil?
      Writer.write_integer(writer, 'max_number_of_virtual_functions', object.max_number_of_virtual_functions) unless object.max_number_of_virtual_functions.nil?
      Writer.write_integer(writer, 'number_of_virtual_functions', object.number_of_virtual_functions) unless object.number_of_virtual_functions.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host_nic_virtual_functions_configuration'
      plural ||= 'host_nic_virtual_functions_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostStorageWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host_storage'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      PropertyWriter.write_many(object.driver_options, writer, 'property', 'driver_options') unless object.driver_options.nil?
      PropertyWriter.write_many(object.driver_sensitive_options, writer, 'property', 'driver_sensitive_options') unless object.driver_sensitive_options.nil?
      LogicalUnitWriter.write_many(object.logical_units, writer, 'logical_unit', 'logical_units') unless object.logical_units.nil?
      Writer.write_string(writer, 'mount_options', object.mount_options) unless object.mount_options.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'nfs_retrans', object.nfs_retrans) unless object.nfs_retrans.nil?
      Writer.write_integer(writer, 'nfs_timeo', object.nfs_timeo) unless object.nfs_timeo.nil?
      Writer.write_string(writer, 'nfs_version', object.nfs_version) unless object.nfs_version.nil?
      Writer.write_boolean(writer, 'override_luns', object.override_luns) unless object.override_luns.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_string(writer, 'path', object.path) unless object.path.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'portal', object.portal) unless object.portal.nil?
      Writer.write_string(writer, 'target', object.target) unless object.target.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      Writer.write_string(writer, 'vfs_type', object.vfs_type) unless object.vfs_type.nil?
      VolumeGroupWriter.write_one(object.volume_group, writer, 'volume_group') unless object.volume_group.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host_storage'
      plural ||= 'host_storages'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class HostedEngineWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'hosted_engine'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'active', object.active) unless object.active.nil?
      Writer.write_boolean(writer, 'configured', object.configured) unless object.configured.nil?
      Writer.write_boolean(writer, 'global_maintenance', object.global_maintenance) unless object.global_maintenance.nil?
      Writer.write_boolean(writer, 'local_maintenance', object.local_maintenance) unless object.local_maintenance.nil?
      Writer.write_integer(writer, 'score', object.score) unless object.score.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'hosted_engine'
      plural ||= 'hosted_engines'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IconWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'icon'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'data', object.data) unless object.data.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'media_type', object.media_type) unless object.media_type.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'icon'
      plural ||= 'icons'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IdentifiedWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'identified'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'identified'
      plural ||= 'identifieds'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ImageWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'image'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'size', object.size) unless object.size.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'image'
      plural ||= 'images'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ImageTransferWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'image_transfer'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'active', object.active) unless object.active.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'direction', object.direction) unless object.direction.nil?
      Writer.write_string(writer, 'format', object.format) unless object.format.nil?
      Writer.write_integer(writer, 'inactivity_timeout', object.inactivity_timeout) unless object.inactivity_timeout.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'phase', object.phase) unless object.phase.nil?
      Writer.write_string(writer, 'proxy_url', object.proxy_url) unless object.proxy_url.nil?
      Writer.write_boolean(writer, 'shallow', object.shallow) unless object.shallow.nil?
      Writer.write_string(writer, 'timeout_policy', object.timeout_policy) unless object.timeout_policy.nil?
      Writer.write_string(writer, 'transfer_url', object.transfer_url) unless object.transfer_url.nil?
      Writer.write_integer(writer, 'transferred', object.transferred) unless object.transferred.nil?
      BackupWriter.write_one(object.backup, writer, 'backup') unless object.backup.nil?
      DiskWriter.write_one(object.disk, writer, 'disk') unless object.disk.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      ImageWriter.write_one(object.image, writer, 'image') unless object.image.nil?
      DiskSnapshotWriter.write_one(object.snapshot, writer, 'snapshot') unless object.snapshot.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'image_transfer'
      plural ||= 'image_transfers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class InitializationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'initialization'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'active_directory_ou', object.active_directory_ou) unless object.active_directory_ou.nil?
      Writer.write_string(writer, 'authorized_ssh_keys', object.authorized_ssh_keys) unless object.authorized_ssh_keys.nil?
      CloudInitWriter.write_one(object.cloud_init, writer, 'cloud_init') unless object.cloud_init.nil?
      Writer.write_string(writer, 'cloud_init_network_protocol', object.cloud_init_network_protocol) unless object.cloud_init_network_protocol.nil?
      ConfigurationWriter.write_one(object.configuration, writer, 'configuration') unless object.configuration.nil?
      Writer.write_string(writer, 'custom_script', object.custom_script) unless object.custom_script.nil?
      Writer.write_string(writer, 'dns_search', object.dns_search) unless object.dns_search.nil?
      Writer.write_string(writer, 'dns_servers', object.dns_servers) unless object.dns_servers.nil?
      Writer.write_string(writer, 'domain', object.domain) unless object.domain.nil?
      Writer.write_string(writer, 'host_name', object.host_name) unless object.host_name.nil?
      Writer.write_string(writer, 'input_locale', object.input_locale) unless object.input_locale.nil?
      NicConfigurationWriter.write_many(object.nic_configurations, writer, 'nic_configuration', 'nic_configurations') unless object.nic_configurations.nil?
      Writer.write_string(writer, 'org_name', object.org_name) unless object.org_name.nil?
      Writer.write_boolean(writer, 'regenerate_ids', object.regenerate_ids) unless object.regenerate_ids.nil?
      Writer.write_boolean(writer, 'regenerate_ssh_keys', object.regenerate_ssh_keys) unless object.regenerate_ssh_keys.nil?
      Writer.write_string(writer, 'root_password', object.root_password) unless object.root_password.nil?
      Writer.write_string(writer, 'system_locale', object.system_locale) unless object.system_locale.nil?
      Writer.write_string(writer, 'timezone', object.timezone) unless object.timezone.nil?
      Writer.write_string(writer, 'ui_language', object.ui_language) unless object.ui_language.nil?
      Writer.write_string(writer, 'user_locale', object.user_locale) unless object.user_locale.nil?
      Writer.write_string(writer, 'user_name', object.user_name) unless object.user_name.nil?
      Writer.write_string(writer, 'windows_license_key', object.windows_license_key) unless object.windows_license_key.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'initialization'
      plural ||= 'initializations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class InstanceTypeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'instance_type'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      BiosWriter.write_one(object.bios, writer, 'bios') unless object.bios.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      ConsoleWriter.write_one(object.console, writer, 'console') unless object.console.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_integer(writer, 'cpu_shares', object.cpu_shares) unless object.cpu_shares.nil?
      Writer.write_date(writer, 'creation_time', object.creation_time) unless object.creation_time.nil?
      VersionWriter.write_one(object.custom_compatibility_version, writer, 'custom_compatibility_version') unless object.custom_compatibility_version.nil?
      Writer.write_string(writer, 'custom_cpu_model', object.custom_cpu_model) unless object.custom_cpu_model.nil?
      Writer.write_string(writer, 'custom_emulated_machine', object.custom_emulated_machine) unless object.custom_emulated_machine.nil?
      CustomPropertyWriter.write_many(object.custom_properties, writer, 'custom_property', 'custom_properties') unless object.custom_properties.nil?
      Writer.write_boolean(writer, 'delete_protected', object.delete_protected) unless object.delete_protected.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      HighAvailabilityWriter.write_one(object.high_availability, writer, 'high_availability') unless object.high_availability.nil?
      InitializationWriter.write_one(object.initialization, writer, 'initialization') unless object.initialization.nil?
      IoWriter.write_one(object.io, writer, 'io') unless object.io.nil?
      IconWriter.write_one(object.large_icon, writer, 'large_icon') unless object.large_icon.nil?
      StorageDomainLeaseWriter.write_one(object.lease, writer, 'lease') unless object.lease.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      MemoryPolicyWriter.write_one(object.memory_policy, writer, 'memory_policy') unless object.memory_policy.nil?
      MigrationOptionsWriter.write_one(object.migration, writer, 'migration') unless object.migration.nil?
      Writer.write_integer(writer, 'migration_downtime', object.migration_downtime) unless object.migration_downtime.nil?
      Writer.write_boolean(writer, 'multi_queues_enabled', object.multi_queues_enabled) unless object.multi_queues_enabled.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'origin', object.origin) unless object.origin.nil?
      OperatingSystemWriter.write_one(object.os, writer, 'os') unless object.os.nil?
      VmPlacementPolicyWriter.write_one(object.placement_policy, writer, 'placement_policy') unless object.placement_policy.nil?
      RngDeviceWriter.write_one(object.rng_device, writer, 'rng_device') unless object.rng_device.nil?
      SerialNumberWriter.write_one(object.serial_number, writer, 'serial_number') unless object.serial_number.nil?
      IconWriter.write_one(object.small_icon, writer, 'small_icon') unless object.small_icon.nil?
      Writer.write_boolean(writer, 'soundcard_enabled', object.soundcard_enabled) unless object.soundcard_enabled.nil?
      SsoWriter.write_one(object.sso, writer, 'sso') unless object.sso.nil?
      Writer.write_boolean(writer, 'start_paused', object.start_paused) unless object.start_paused.nil?
      Writer.write_boolean(writer, 'stateless', object.stateless) unless object.stateless.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_error_resume_behaviour', object.storage_error_resume_behaviour) unless object.storage_error_resume_behaviour.nil?
      TimeZoneWriter.write_one(object.time_zone, writer, 'time_zone') unless object.time_zone.nil?
      Writer.write_boolean(writer, 'tunnel_migration', object.tunnel_migration) unless object.tunnel_migration.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      UsbWriter.write_one(object.usb, writer, 'usb') unless object.usb.nil?
      TemplateVersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      VirtioScsiWriter.write_one(object.virtio_scsi, writer, 'virtio_scsi') unless object.virtio_scsi.nil?
      Writer.write_boolean(writer, 'virtio_scsi_multi_queues_enabled', object.virtio_scsi_multi_queues_enabled) unless object.virtio_scsi_multi_queues_enabled.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      CdromWriter.write_many(object.cdroms, writer, 'cdrom', 'cdroms') unless object.cdroms.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      CpuProfileWriter.write_one(object.cpu_profile, writer, 'cpu_profile') unless object.cpu_profile.nil?
      DiskAttachmentWriter.write_many(object.disk_attachments, writer, 'disk_attachment', 'disk_attachments') unless object.disk_attachments.nil?
      GraphicsConsoleWriter.write_many(object.graphics_consoles, writer, 'graphics_console', 'graphics_consoles') unless object.graphics_consoles.nil?
      NicWriter.write_many(object.nics, writer, 'nic', 'nics') unless object.nics.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      WatchdogWriter.write_many(object.watchdogs, writer, 'watchdog', 'watchdogs') unless object.watchdogs.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'instance_type'
      plural ||= 'instance_types'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IoWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'io'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'threads', object.threads) unless object.threads.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'io'
      plural ||= 'ios'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IpWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'ip'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'gateway', object.gateway) unless object.gateway.nil?
      Writer.write_string(writer, 'netmask', object.netmask) unless object.netmask.nil?
      Writer.write_string(writer, 'version', object.version) unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'ip'
      plural ||= 'ips'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IpAddressAssignmentWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'ip_address_assignment'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'assignment_method', object.assignment_method) unless object.assignment_method.nil?
      IpWriter.write_one(object.ip, writer, 'ip') unless object.ip.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'ip_address_assignment'
      plural ||= 'ip_address_assignments'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IscsiBondWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'iscsi_bond'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      NetworkWriter.write_many(object.networks, writer, 'network', 'networks') unless object.networks.nil?
      StorageConnectionWriter.write_many(object.storage_connections, writer, 'storage_connection', 'storage_connections') unless object.storage_connections.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'iscsi_bond'
      plural ||= 'iscsi_bonds'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class IscsiDetailsWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'iscsi_details'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'disk_id', object.disk_id) unless object.disk_id.nil?
      Writer.write_string(writer, 'initiator', object.initiator) unless object.initiator.nil?
      Writer.write_integer(writer, 'lun_mapping', object.lun_mapping) unless object.lun_mapping.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_integer(writer, 'paths', object.paths) unless object.paths.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'portal', object.portal) unless object.portal.nil?
      Writer.write_string(writer, 'product_id', object.product_id) unless object.product_id.nil?
      Writer.write_string(writer, 'serial', object.serial) unless object.serial.nil?
      Writer.write_integer(writer, 'size', object.size) unless object.size.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_domain_id', object.storage_domain_id) unless object.storage_domain_id.nil?
      Writer.write_string(writer, 'target', object.target) unless object.target.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      Writer.write_string(writer, 'vendor_id', object.vendor_id) unless object.vendor_id.nil?
      Writer.write_string(writer, 'volume_group_id', object.volume_group_id) unless object.volume_group_id.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'iscsi_details'
      plural ||= 'iscsi_detailss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class JobWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'job'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'auto_cleared', object.auto_cleared) unless object.auto_cleared.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_date(writer, 'end_time', object.end_time) unless object.end_time.nil?
      Writer.write_boolean(writer, 'external', object.external) unless object.external.nil?
      Writer.write_date(writer, 'last_updated', object.last_updated) unless object.last_updated.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_date(writer, 'start_time', object.start_time) unless object.start_time.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      UserWriter.write_one(object.owner, writer, 'owner') unless object.owner.nil?
      StepWriter.write_many(object.steps, writer, 'step', 'steps') unless object.steps.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'job'
      plural ||= 'jobs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class KatelloErratumWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'katello_erratum'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_date(writer, 'issued', object.issued) unless object.issued.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PackageWriter.write_many(object.packages, writer, 'package', 'packages') unless object.packages.nil?
      Writer.write_string(writer, 'severity', object.severity) unless object.severity.nil?
      Writer.write_string(writer, 'solution', object.solution) unless object.solution.nil?
      Writer.write_string(writer, 'summary', object.summary) unless object.summary.nil?
      Writer.write_string(writer, 'title', object.title) unless object.title.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'katello_erratum'
      plural ||= 'katello_errata'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class KernelWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'kernel'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'kernel'
      plural ||= 'kernels'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class KsmWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'ksm'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_boolean(writer, 'merge_across_nodes', object.merge_across_nodes) unless object.merge_across_nodes.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'ksm'
      plural ||= 'ksms'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class LinkLayerDiscoveryProtocolElementWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'link_layer_discovery_protocol_element'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'oui', object.oui) unless object.oui.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_integer(writer, 'subtype', object.subtype) unless object.subtype.nil?
      Writer.write_integer(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'link_layer_discovery_protocol_element'
      plural ||= 'link_layer_discovery_protocol_elements'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class LogicalUnitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'logical_unit'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_integer(writer, 'discard_max_size', object.discard_max_size) unless object.discard_max_size.nil?
      Writer.write_boolean(writer, 'discard_zeroes_data', object.discard_zeroes_data) unless object.discard_zeroes_data.nil?
      Writer.write_string(writer, 'disk_id', object.disk_id) unless object.disk_id.nil?
      Writer.write_integer(writer, 'lun_mapping', object.lun_mapping) unless object.lun_mapping.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_integer(writer, 'paths', object.paths) unless object.paths.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'portal', object.portal) unless object.portal.nil?
      Writer.write_string(writer, 'product_id', object.product_id) unless object.product_id.nil?
      Writer.write_string(writer, 'serial', object.serial) unless object.serial.nil?
      Writer.write_integer(writer, 'size', object.size) unless object.size.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_domain_id', object.storage_domain_id) unless object.storage_domain_id.nil?
      Writer.write_string(writer, 'target', object.target) unless object.target.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      Writer.write_string(writer, 'vendor_id', object.vendor_id) unless object.vendor_id.nil?
      Writer.write_string(writer, 'volume_group_id', object.volume_group_id) unless object.volume_group_id.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'logical_unit'
      plural ||= 'logical_units'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MDevTypeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'm_dev_type'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'available_instances', object.available_instances) unless object.available_instances.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'm_dev_type'
      plural ||= 'm_dev_types'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MacWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'mac'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'mac'
      plural ||= 'macs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MacPoolWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'mac_pool'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'allow_duplicates', object.allow_duplicates) unless object.allow_duplicates.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_boolean(writer, 'default_pool', object.default_pool) unless object.default_pool.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      RangeWriter.write_many(object.ranges, writer, 'range', 'ranges') unless object.ranges.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'mac_pool'
      plural ||= 'mac_pools'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MemoryOverCommitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'memory_over_commit'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'percent', object.percent) unless object.percent.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'memory_over_commit'
      plural ||= 'memory_over_commits'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MemoryPolicyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'memory_policy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'ballooning', object.ballooning) unless object.ballooning.nil?
      Writer.write_integer(writer, 'guaranteed', object.guaranteed) unless object.guaranteed.nil?
      Writer.write_integer(writer, 'max', object.max) unless object.max.nil?
      MemoryOverCommitWriter.write_one(object.over_commit, writer, 'over_commit') unless object.over_commit.nil?
      TransparentHugePagesWriter.write_one(object.transparent_huge_pages, writer, 'transparent_hugepages') unless object.transparent_huge_pages.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'memory_policy'
      plural ||= 'memory_policies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MethodWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'method'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'method'
      plural ||= 'methods'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MigrationBandwidthWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'migration_bandwidth'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'assignment_method', object.assignment_method) unless object.assignment_method.nil?
      Writer.write_integer(writer, 'custom_value', object.custom_value) unless object.custom_value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'migration_bandwidth'
      plural ||= 'migration_bandwidths'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MigrationOptionsWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'migration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'auto_converge', object.auto_converge) unless object.auto_converge.nil?
      MigrationBandwidthWriter.write_one(object.bandwidth, writer, 'bandwidth') unless object.bandwidth.nil?
      Writer.write_string(writer, 'compressed', object.compressed) unless object.compressed.nil?
      Writer.write_string(writer, 'encrypted', object.encrypted) unless object.encrypted.nil?
      MigrationPolicyWriter.write_one(object.policy, writer, 'policy') unless object.policy.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'migration'
      plural ||= 'migration_optionss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class MigrationPolicyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'migration_policy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'migration_policy'
      plural ||= 'migration_policies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NetworkWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'network'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'display', object.display) unless object.display.nil?
      DnsResolverConfigurationWriter.write_one(object.dns_resolver_configuration, writer, 'dns_resolver_configuration') unless object.dns_resolver_configuration.nil?
      IpWriter.write_one(object.ip, writer, 'ip') unless object.ip.nil?
      Writer.write_integer(writer, 'mtu', object.mtu) unless object.mtu.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'port_isolation', object.port_isolation) unless object.port_isolation.nil?
      Writer.write_boolean(writer, 'profile_required', object.profile_required) unless object.profile_required.nil?
      Writer.write_boolean(writer, 'required', object.required) unless object.required.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_boolean(writer, 'stp', object.stp) unless object.stp.nil?
      unless object.usages.nil?
        writer.write_start('usages')
        object.usages.each do |item|
          Writer.write_string(writer, 'usage', item) unless item.nil?
        end
        writer.write_end
      end
      Writer.write_string(writer, 'vdsm_name', object.vdsm_name) unless object.vdsm_name.nil?
      VlanWriter.write_one(object.vlan, writer, 'vlan') unless object.vlan.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      OpenStackNetworkProviderWriter.write_one(object.external_provider, writer, 'external_provider') unless object.external_provider.nil?
      NetworkWriter.write_one(object.external_provider_physical_network, writer, 'external_provider_physical_network') unless object.external_provider_physical_network.nil?
      NetworkLabelWriter.write_many(object.network_labels, writer, 'network_label', 'network_labels') unless object.network_labels.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QosWriter.write_one(object.qos, writer, 'qos') unless object.qos.nil?
      VnicProfileWriter.write_many(object.vnic_profiles, writer, 'vnic_profile', 'vnic_profiles') unless object.vnic_profiles.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'network'
      plural ||= 'networks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NetworkAttachmentWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'network_attachment'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DnsResolverConfigurationWriter.write_one(object.dns_resolver_configuration, writer, 'dns_resolver_configuration') unless object.dns_resolver_configuration.nil?
      Writer.write_boolean(writer, 'in_sync', object.in_sync) unless object.in_sync.nil?
      IpAddressAssignmentWriter.write_many(object.ip_address_assignments, writer, 'ip_address_assignment', 'ip_address_assignments') unless object.ip_address_assignments.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      ReportedConfigurationWriter.write_many(object.reported_configurations, writer, 'reported_configuration', 'reported_configurations') unless object.reported_configurations.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      HostNicWriter.write_one(object.host_nic, writer, 'host_nic') unless object.host_nic.nil?
      NetworkWriter.write_one(object.network, writer, 'network') unless object.network.nil?
      QosWriter.write_one(object.qos, writer, 'qos') unless object.qos.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'network_attachment'
      plural ||= 'network_attachments'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NetworkConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'network_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      DnsWriter.write_one(object.dns, writer, 'dns') unless object.dns.nil?
      NicWriter.write_many(object.nics, writer, 'nic', 'nics') unless object.nics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'network_configuration'
      plural ||= 'network_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NetworkFilterWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'network_filter'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'network_filter'
      plural ||= 'network_filters'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NetworkFilterParameterWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'network_filter_parameter'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      NicWriter.write_one(object.nic, writer, 'nic') unless object.nic.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'network_filter_parameter'
      plural ||= 'network_filter_parameters'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NetworkLabelWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'network_label'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      HostNicWriter.write_one(object.host_nic, writer, 'host_nic') unless object.host_nic.nil?
      NetworkWriter.write_one(object.network, writer, 'network') unless object.network.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'network_label'
      plural ||= 'network_labels'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NfsProfileDetailWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'nfs_profile_detail'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'nfs_server_ip', object.nfs_server_ip) unless object.nfs_server_ip.nil?
      ProfileDetailWriter.write_many(object.profile_details, writer, 'profile_detail', 'profile_details') unless object.profile_details.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'nfs_profile_detail'
      plural ||= 'nfs_profile_details'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NicWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'nic'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'boot_protocol', object.boot_protocol) unless object.boot_protocol.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'interface', object.interface) unless object.interface.nil?
      Writer.write_boolean(writer, 'linked', object.linked) unless object.linked.nil?
      MacWriter.write_one(object.mac, writer, 'mac') unless object.mac.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'on_boot', object.on_boot) unless object.on_boot.nil?
      Writer.write_boolean(writer, 'plugged', object.plugged) unless object.plugged.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      NetworkWriter.write_one(object.network, writer, 'network') unless object.network.nil?
      NetworkAttachmentWriter.write_many(object.network_attachments, writer, 'network_attachment', 'network_attachments') unless object.network_attachments.nil?
      NetworkFilterParameterWriter.write_many(object.network_filter_parameters, writer, 'network_filter_parameter', 'network_filter_parameters') unless object.network_filter_parameters.nil?
      NetworkLabelWriter.write_many(object.network_labels, writer, 'network_label', 'network_labels') unless object.network_labels.nil?
      ReportedDeviceWriter.write_many(object.reported_devices, writer, 'reported_device', 'reported_devices') unless object.reported_devices.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      NetworkLabelWriter.write_many(object.virtual_function_allowed_labels, writer, 'network_label', 'virtual_function_allowed_labels') unless object.virtual_function_allowed_labels.nil?
      NetworkWriter.write_many(object.virtual_function_allowed_networks, writer, 'network', 'virtual_function_allowed_networks') unless object.virtual_function_allowed_networks.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      VnicProfileWriter.write_one(object.vnic_profile, writer, 'vnic_profile') unless object.vnic_profile.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'nic'
      plural ||= 'nics'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NicConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'nic_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'boot_protocol', object.boot_protocol) unless object.boot_protocol.nil?
      IpWriter.write_one(object.ip, writer, 'ip') unless object.ip.nil?
      IpWriter.write_one(object.ipv6, writer, 'ipv6') unless object.ipv6.nil?
      Writer.write_string(writer, 'ipv6_boot_protocol', object.ipv6_boot_protocol) unless object.ipv6_boot_protocol.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'on_boot', object.on_boot) unless object.on_boot.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'nic_configuration'
      plural ||= 'nic_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NumaNodeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'host_numa_node'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'index', object.index) unless object.index.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'node_distance', object.node_distance) unless object.node_distance.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'host_numa_node'
      plural ||= 'host_numa_nodes'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class NumaNodePinWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'numa_node_pin'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      NumaNodeWriter.write_one(object.host_numa_node, writer, 'host_numa_node') unless object.host_numa_node.nil?
      Writer.write_integer(writer, 'index', object.index) unless object.index.nil?
      Writer.write_boolean(writer, 'pinned', object.pinned) unless object.pinned.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'numa_node_pin'
      plural ||= 'numa_node_pins'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackImageWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_image'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      OpenStackImageProviderWriter.write_one(object.openstack_image_provider, writer, 'openstack_image_provider') unless object.openstack_image_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_image'
      plural ||= 'openstack_images'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackImageProviderWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_image_provider'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'authentication_url', object.authentication_url) unless object.authentication_url.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_boolean(writer, 'requires_authentication', object.requires_authentication) unless object.requires_authentication.nil?
      Writer.write_string(writer, 'tenant_name', object.tenant_name) unless object.tenant_name.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      CertificateWriter.write_many(object.certificates, writer, 'certificate', 'certificates') unless object.certificates.nil?
      OpenStackImageWriter.write_many(object.images, writer, 'openstack_image', 'images') unless object.images.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_image_provider'
      plural ||= 'openstack_image_providers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackNetworkWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_network'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      OpenStackNetworkProviderWriter.write_one(object.openstack_network_provider, writer, 'openstack_network_provider') unless object.openstack_network_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_network'
      plural ||= 'openstack_networks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackNetworkProviderWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_network_provider'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      AgentConfigurationWriter.write_one(object.agent_configuration, writer, 'agent_configuration') unless object.agent_configuration.nil?
      Writer.write_string(writer, 'authentication_url', object.authentication_url) unless object.authentication_url.nil?
      Writer.write_boolean(writer, 'auto_sync', object.auto_sync) unless object.auto_sync.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'external_plugin_type', object.external_plugin_type) unless object.external_plugin_type.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_string(writer, 'plugin_type', object.plugin_type) unless object.plugin_type.nil?
      Writer.write_string(writer, 'project_domain_name', object.project_domain_name) unless object.project_domain_name.nil?
      Writer.write_string(writer, 'project_name', object.project_name) unless object.project_name.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_boolean(writer, 'read_only', object.read_only) unless object.read_only.nil?
      Writer.write_boolean(writer, 'requires_authentication', object.requires_authentication) unless object.requires_authentication.nil?
      Writer.write_string(writer, 'tenant_name', object.tenant_name) unless object.tenant_name.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_boolean(writer, 'unmanaged', object.unmanaged) unless object.unmanaged.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'user_domain_name', object.user_domain_name) unless object.user_domain_name.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      CertificateWriter.write_many(object.certificates, writer, 'certificate', 'certificates') unless object.certificates.nil?
      OpenStackNetworkWriter.write_many(object.networks, writer, 'openstack_network', 'networks') unless object.networks.nil?
      OpenStackSubnetWriter.write_many(object.subnets, writer, 'openstack_subnet', 'subnets') unless object.subnets.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_network_provider'
      plural ||= 'openstack_network_providers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackProviderWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'open_stack_provider'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'authentication_url', object.authentication_url) unless object.authentication_url.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_boolean(writer, 'requires_authentication', object.requires_authentication) unless object.requires_authentication.nil?
      Writer.write_string(writer, 'tenant_name', object.tenant_name) unless object.tenant_name.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'open_stack_provider'
      plural ||= 'open_stack_providers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackSubnetWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_subnet'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'cidr', object.cidr) unless object.cidr.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      unless object.dns_servers.nil?
        writer.write_start('dns_servers')
        object.dns_servers.each do |item|
          Writer.write_string(writer, 'dns_server', item) unless item.nil?
        end
        writer.write_end
      end
      Writer.write_string(writer, 'gateway', object.gateway) unless object.gateway.nil?
      Writer.write_string(writer, 'ip_version', object.ip_version) unless object.ip_version.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      OpenStackNetworkWriter.write_one(object.openstack_network, writer, 'openstack_network') unless object.openstack_network.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_subnet'
      plural ||= 'openstack_subnets'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackVolumeProviderWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_volume_provider'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'authentication_url', object.authentication_url) unless object.authentication_url.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_boolean(writer, 'requires_authentication', object.requires_authentication) unless object.requires_authentication.nil?
      Writer.write_string(writer, 'tenant_name', object.tenant_name) unless object.tenant_name.nil?
      Writer.write_string(writer, 'url', object.url) unless object.url.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      OpenstackVolumeAuthenticationKeyWriter.write_many(object.authentication_keys, writer, 'openstack_volume_authentication_key', 'authentication_keys') unless object.authentication_keys.nil?
      CertificateWriter.write_many(object.certificates, writer, 'certificate', 'certificates') unless object.certificates.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      OpenStackVolumeTypeWriter.write_many(object.volume_types, writer, 'open_stack_volume_type', 'volume_types') unless object.volume_types.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_volume_provider'
      plural ||= 'openstack_volume_providers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenStackVolumeTypeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'open_stack_volume_type'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      OpenStackVolumeProviderWriter.write_one(object.openstack_volume_provider, writer, 'openstack_volume_provider') unless object.openstack_volume_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'open_stack_volume_type'
      plural ||= 'open_stack_volume_types'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OpenstackVolumeAuthenticationKeyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'openstack_volume_authentication_key'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_date(writer, 'creation_date', object.creation_date) unless object.creation_date.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'usage_type', object.usage_type) unless object.usage_type.nil?
      Writer.write_string(writer, 'uuid', object.uuid) unless object.uuid.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      OpenStackVolumeProviderWriter.write_one(object.openstack_volume_provider, writer, 'openstack_volume_provider') unless object.openstack_volume_provider.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'openstack_volume_authentication_key'
      plural ||= 'openstack_volume_authentication_keys'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OperatingSystemWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'os'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      BootWriter.write_one(object.boot, writer, 'boot') unless object.boot.nil?
      Writer.write_string(writer, 'cmdline', object.cmdline) unless object.cmdline.nil?
      Writer.write_string(writer, 'custom_kernel_cmdline', object.custom_kernel_cmdline) unless object.custom_kernel_cmdline.nil?
      Writer.write_string(writer, 'initrd', object.initrd) unless object.initrd.nil?
      Writer.write_string(writer, 'kernel', object.kernel) unless object.kernel.nil?
      Writer.write_string(writer, 'reported_kernel_cmdline', object.reported_kernel_cmdline) unless object.reported_kernel_cmdline.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'os'
      plural ||= 'oss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OperatingSystemInfoWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'operating_system'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'architecture', object.architecture) unless object.architecture.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      IconWriter.write_one(object.large_icon, writer, 'large_icon') unless object.large_icon.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      IconWriter.write_one(object.small_icon, writer, 'small_icon') unless object.small_icon.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'operating_system'
      plural ||= 'operation_systems'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class OptionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'option'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'option'
      plural ||= 'options'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PackageWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'package'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'package'
      plural ||= 'packages'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PayloadWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'payload'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      FileWriter.write_many(object.files, writer, 'file', 'files') unless object.files.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'volume_id', object.volume_id) unless object.volume_id.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'payload'
      plural ||= 'payloads'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PermissionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'permission'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      DiskWriter.write_one(object.disk, writer, 'disk') unless object.disk.nil?
      GroupWriter.write_one(object.group, writer, 'group') unless object.group.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      RoleWriter.write_one(object.role, writer, 'role') unless object.role.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmPoolWriter.write_one(object.vm_pool, writer, 'vm_pool') unless object.vm_pool.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'permission'
      plural ||= 'permissions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PermitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'permit'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'administrative', object.administrative) unless object.administrative.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      RoleWriter.write_one(object.role, writer, 'role') unless object.role.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'permit'
      plural ||= 'permits'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PmProxyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'pm_proxy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'pm_proxy'
      plural ||= 'pm_proxies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PortMirroringWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'port_mirroring'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'port_mirroring'
      plural ||= 'port_mirrorings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PowerManagementWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'power_management'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      AgentWriter.write_many(object.agents, writer, 'agent', 'agents') unless object.agents.nil?
      Writer.write_boolean(writer, 'automatic_pm_enabled', object.automatic_pm_enabled) unless object.automatic_pm_enabled.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_boolean(writer, 'kdump_detection', object.kdump_detection) unless object.kdump_detection.nil?
      OptionWriter.write_many(object.options, writer, 'option', 'options') unless object.options.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      PmProxyWriter.write_many(object.pm_proxies, writer, 'pm_proxy', 'pm_proxies') unless object.pm_proxies.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'power_management'
      plural ||= 'power_managements'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ProductWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'product'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'product'
      plural ||= 'products'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ProductInfoWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'product_info'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'instance_id', object.instance_id) unless object.instance_id.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'vendor', object.vendor) unless object.vendor.nil?
      VersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'product_info'
      plural ||= 'product_infos'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ProfileDetailWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'profile_detail'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      BlockStatisticWriter.write_many(object.block_statistics, writer, 'block_statistic', 'block_statistics') unless object.block_statistics.nil?
      Writer.write_integer(writer, 'duration', object.duration) unless object.duration.nil?
      FopStatisticWriter.write_many(object.fop_statistics, writer, 'fop_statistic', 'fop_statistics') unless object.fop_statistics.nil?
      Writer.write_string(writer, 'profile_type', object.profile_type) unless object.profile_type.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'profile_detail'
      plural ||= 'profile_details'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class PropertyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'property'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'property'
      plural ||= 'properties'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ProxyTicketWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'proxy_ticket'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'proxy_ticket'
      plural ||= 'proxy_tickets'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class QosWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'qos'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_integer(writer, 'cpu_limit', object.cpu_limit) unless object.cpu_limit.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'inbound_average', object.inbound_average) unless object.inbound_average.nil?
      Writer.write_integer(writer, 'inbound_burst', object.inbound_burst) unless object.inbound_burst.nil?
      Writer.write_integer(writer, 'inbound_peak', object.inbound_peak) unless object.inbound_peak.nil?
      Writer.write_integer(writer, 'max_iops', object.max_iops) unless object.max_iops.nil?
      Writer.write_integer(writer, 'max_read_iops', object.max_read_iops) unless object.max_read_iops.nil?
      Writer.write_integer(writer, 'max_read_throughput', object.max_read_throughput) unless object.max_read_throughput.nil?
      Writer.write_integer(writer, 'max_throughput', object.max_throughput) unless object.max_throughput.nil?
      Writer.write_integer(writer, 'max_write_iops', object.max_write_iops) unless object.max_write_iops.nil?
      Writer.write_integer(writer, 'max_write_throughput', object.max_write_throughput) unless object.max_write_throughput.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'outbound_average', object.outbound_average) unless object.outbound_average.nil?
      Writer.write_integer(writer, 'outbound_average_linkshare', object.outbound_average_linkshare) unless object.outbound_average_linkshare.nil?
      Writer.write_integer(writer, 'outbound_average_realtime', object.outbound_average_realtime) unless object.outbound_average_realtime.nil?
      Writer.write_integer(writer, 'outbound_average_upperlimit', object.outbound_average_upperlimit) unless object.outbound_average_upperlimit.nil?
      Writer.write_integer(writer, 'outbound_burst', object.outbound_burst) unless object.outbound_burst.nil?
      Writer.write_integer(writer, 'outbound_peak', object.outbound_peak) unless object.outbound_peak.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'qos'
      plural ||= 'qoss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class QuotaWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'quota'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_integer(writer, 'cluster_hard_limit_pct', object.cluster_hard_limit_pct) unless object.cluster_hard_limit_pct.nil?
      Writer.write_integer(writer, 'cluster_soft_limit_pct', object.cluster_soft_limit_pct) unless object.cluster_soft_limit_pct.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DiskWriter.write_many(object.disks, writer, 'disk', 'disks') unless object.disks.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'storage_hard_limit_pct', object.storage_hard_limit_pct) unless object.storage_hard_limit_pct.nil?
      Writer.write_integer(writer, 'storage_soft_limit_pct', object.storage_soft_limit_pct) unless object.storage_soft_limit_pct.nil?
      UserWriter.write_many(object.users, writer, 'user', 'users') unless object.users.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaClusterLimitWriter.write_many(object.quota_cluster_limits, writer, 'quota_cluster_limit', 'quota_cluster_limits') unless object.quota_cluster_limits.nil?
      QuotaStorageLimitWriter.write_many(object.quota_storage_limits, writer, 'quota_storage_limit', 'quota_storage_limits') unless object.quota_storage_limits.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'quota'
      plural ||= 'quotas'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class QuotaClusterLimitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'quota_cluster_limit'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_decimal(writer, 'memory_limit', object.memory_limit) unless object.memory_limit.nil?
      Writer.write_decimal(writer, 'memory_usage', object.memory_usage) unless object.memory_usage.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'vcpu_limit', object.vcpu_limit) unless object.vcpu_limit.nil?
      Writer.write_integer(writer, 'vcpu_usage', object.vcpu_usage) unless object.vcpu_usage.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'quota_cluster_limit'
      plural ||= 'quota_cluster_limits'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class QuotaStorageLimitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'quota_storage_limit'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'limit', object.limit) unless object.limit.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_decimal(writer, 'usage', object.usage) unless object.usage.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'quota_storage_limit'
      plural ||= 'quota_storage_limits'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RangeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'range'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'from', object.from) unless object.from.nil?
      Writer.write_string(writer, 'to', object.to) unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'range'
      plural ||= 'ranges'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RateWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'rate'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'bytes', object.bytes) unless object.bytes.nil?
      Writer.write_integer(writer, 'period', object.period) unless object.period.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'rate'
      plural ||= 'rates'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationAffinityGroupMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_affinity_group_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      AffinityGroupWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      AffinityGroupWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_affinity_group_mapping'
      plural ||= 'registration_affinity_group_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationAffinityLabelMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_affinity_label_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      AffinityLabelWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      AffinityLabelWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_affinity_label_mapping'
      plural ||= 'registration_affinity_label_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationClusterMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_cluster_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      ClusterWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      ClusterWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_cluster_mapping'
      plural ||= 'registration_cluster_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      RegistrationAffinityGroupMappingWriter.write_many(object.affinity_group_mappings, writer, 'registration_affinity_group_mapping', 'affinity_group_mappings') unless object.affinity_group_mappings.nil?
      RegistrationAffinityLabelMappingWriter.write_many(object.affinity_label_mappings, writer, 'registration_affinity_label_mapping', 'affinity_label_mappings') unless object.affinity_label_mappings.nil?
      RegistrationClusterMappingWriter.write_many(object.cluster_mappings, writer, 'registration_cluster_mapping', 'cluster_mappings') unless object.cluster_mappings.nil?
      RegistrationDomainMappingWriter.write_many(object.domain_mappings, writer, 'registration_domain_mapping', 'domain_mappings') unless object.domain_mappings.nil?
      RegistrationLunMappingWriter.write_many(object.lun_mappings, writer, 'registration_lun_mapping', 'lun_mappings') unless object.lun_mappings.nil?
      RegistrationRoleMappingWriter.write_many(object.role_mappings, writer, 'registration_role_mapping', 'role_mappings') unless object.role_mappings.nil?
      RegistrationVnicProfileMappingWriter.write_many(object.vnic_profile_mappings, writer, 'registration_vnic_profile_mapping', 'vnic_profile_mappings') unless object.vnic_profile_mappings.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_configuration'
      plural ||= 'registration_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationDomainMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_domain_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      DomainWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      DomainWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_domain_mapping'
      plural ||= 'registration_domain_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationLunMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_lun_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      DiskWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      DiskWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_lun_mapping'
      plural ||= 'registration_lun_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationRoleMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_role_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      RoleWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      RoleWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_role_mapping'
      plural ||= 'registration_role_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RegistrationVnicProfileMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'registration_vnic_profile_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      VnicProfileWriter.write_one(object.from, writer, 'from') unless object.from.nil?
      VnicProfileWriter.write_one(object.to, writer, 'to') unless object.to.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'registration_vnic_profile_mapping'
      plural ||= 'registration_vnic_profile_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ReportedConfigurationWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'reported_configuration'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'actual_value', object.actual_value) unless object.actual_value.nil?
      Writer.write_string(writer, 'expected_value', object.expected_value) unless object.expected_value.nil?
      Writer.write_boolean(writer, 'in_sync', object.in_sync) unless object.in_sync.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'reported_configuration'
      plural ||= 'reported_configurations'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ReportedDeviceWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'reported_device'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      IpWriter.write_many(object.ips, writer, 'ip', 'ips') unless object.ips.nil?
      MacWriter.write_one(object.mac, writer, 'mac') unless object.mac.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'reported_device'
      plural ||= 'reported_devices'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RngDeviceWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'rng_device'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      RateWriter.write_one(object.rate, writer, 'rate') unless object.rate.nil?
      Writer.write_string(writer, 'source', object.source) unless object.source.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'rng_device'
      plural ||= 'rng_devices'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class RoleWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'role'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'administrative', object.administrative) unless object.administrative.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'mutable', object.mutable) unless object.mutable.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PermitWriter.write_many(object.permits, writer, 'permit', 'permits') unless object.permits.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'role'
      plural ||= 'roles'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SchedulingPolicyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'scheduling_policy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_boolean(writer, 'default_policy', object.default_policy) unless object.default_policy.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'locked', object.locked) unless object.locked.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      BalanceWriter.write_many(object.balances, writer, 'balance', 'balances') unless object.balances.nil?
      FilterWriter.write_many(object.filters, writer, 'filter', 'filters') unless object.filters.nil?
      WeightWriter.write_many(object.weight, writer, 'weight', 'weight') unless object.weight.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'scheduling_policy'
      plural ||= 'scheduling_policies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SchedulingPolicyUnitWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'scheduling_policy_unit'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_boolean(writer, 'internal', object.internal) unless object.internal.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      PropertyWriter.write_many(object.properties, writer, 'property', 'properties') unless object.properties.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'scheduling_policy_unit'
      plural ||= 'scheduling_policy_units'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SeLinuxWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'se_linux'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'mode', object.mode) unless object.mode.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'se_linux'
      plural ||= 'se_linuxs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SerialNumberWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'serial_number'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'policy', object.policy) unless object.policy.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'serial_number'
      plural ||= 'serial_numbers'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SessionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'session'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_boolean(writer, 'console_user', object.console_user) unless object.console_user.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      IpWriter.write_one(object.ip, writer, 'ip') unless object.ip.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'protocol', object.protocol) unless object.protocol.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'session'
      plural ||= 'sessions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SkipIfConnectivityBrokenWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'skip_if_connectivity_broken'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_integer(writer, 'threshold', object.threshold) unless object.threshold.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'skip_if_connectivity_broken'
      plural ||= 'skip_if_connectivity_brokens'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SkipIfSdActiveWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'skip_if_sd_active'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'skip_if_sd_active'
      plural ||= 'skip_if_sd_actives'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SnapshotWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'snapshot'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      BiosWriter.write_one(object.bios, writer, 'bios') unless object.bios.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      ConsoleWriter.write_one(object.console, writer, 'console') unless object.console.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_integer(writer, 'cpu_shares', object.cpu_shares) unless object.cpu_shares.nil?
      Writer.write_date(writer, 'creation_time', object.creation_time) unless object.creation_time.nil?
      VersionWriter.write_one(object.custom_compatibility_version, writer, 'custom_compatibility_version') unless object.custom_compatibility_version.nil?
      Writer.write_string(writer, 'custom_cpu_model', object.custom_cpu_model) unless object.custom_cpu_model.nil?
      Writer.write_string(writer, 'custom_emulated_machine', object.custom_emulated_machine) unless object.custom_emulated_machine.nil?
      CustomPropertyWriter.write_many(object.custom_properties, writer, 'custom_property', 'custom_properties') unless object.custom_properties.nil?
      Writer.write_date(writer, 'date', object.date) unless object.date.nil?
      Writer.write_boolean(writer, 'delete_protected', object.delete_protected) unless object.delete_protected.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      Writer.write_string(writer, 'fqdn', object.fqdn) unless object.fqdn.nil?
      GuestOperatingSystemWriter.write_one(object.guest_operating_system, writer, 'guest_operating_system') unless object.guest_operating_system.nil?
      TimeZoneWriter.write_one(object.guest_time_zone, writer, 'guest_time_zone') unless object.guest_time_zone.nil?
      Writer.write_boolean(writer, 'has_illegal_images', object.has_illegal_images) unless object.has_illegal_images.nil?
      HighAvailabilityWriter.write_one(object.high_availability, writer, 'high_availability') unless object.high_availability.nil?
      InitializationWriter.write_one(object.initialization, writer, 'initialization') unless object.initialization.nil?
      IoWriter.write_one(object.io, writer, 'io') unless object.io.nil?
      IconWriter.write_one(object.large_icon, writer, 'large_icon') unless object.large_icon.nil?
      StorageDomainLeaseWriter.write_one(object.lease, writer, 'lease') unless object.lease.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      MemoryPolicyWriter.write_one(object.memory_policy, writer, 'memory_policy') unless object.memory_policy.nil?
      MigrationOptionsWriter.write_one(object.migration, writer, 'migration') unless object.migration.nil?
      Writer.write_integer(writer, 'migration_downtime', object.migration_downtime) unless object.migration_downtime.nil?
      Writer.write_boolean(writer, 'multi_queues_enabled', object.multi_queues_enabled) unless object.multi_queues_enabled.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'next_run_configuration_exists', object.next_run_configuration_exists) unless object.next_run_configuration_exists.nil?
      Writer.write_string(writer, 'numa_tune_mode', object.numa_tune_mode) unless object.numa_tune_mode.nil?
      Writer.write_string(writer, 'origin', object.origin) unless object.origin.nil?
      OperatingSystemWriter.write_one(object.os, writer, 'os') unless object.os.nil?
      PayloadWriter.write_many(object.payloads, writer, 'payload', 'payloads') unless object.payloads.nil?
      Writer.write_boolean(writer, 'persist_memorystate', object.persist_memorystate) unless object.persist_memorystate.nil?
      VmPlacementPolicyWriter.write_one(object.placement_policy, writer, 'placement_policy') unless object.placement_policy.nil?
      RngDeviceWriter.write_one(object.rng_device, writer, 'rng_device') unless object.rng_device.nil?
      Writer.write_boolean(writer, 'run_once', object.run_once) unless object.run_once.nil?
      SerialNumberWriter.write_one(object.serial_number, writer, 'serial_number') unless object.serial_number.nil?
      IconWriter.write_one(object.small_icon, writer, 'small_icon') unless object.small_icon.nil?
      Writer.write_string(writer, 'snapshot_status', object.snapshot_status) unless object.snapshot_status.nil?
      Writer.write_string(writer, 'snapshot_type', object.snapshot_type) unless object.snapshot_type.nil?
      Writer.write_boolean(writer, 'soundcard_enabled', object.soundcard_enabled) unless object.soundcard_enabled.nil?
      SsoWriter.write_one(object.sso, writer, 'sso') unless object.sso.nil?
      Writer.write_boolean(writer, 'start_paused', object.start_paused) unless object.start_paused.nil?
      Writer.write_date(writer, 'start_time', object.start_time) unless object.start_time.nil?
      Writer.write_boolean(writer, 'stateless', object.stateless) unless object.stateless.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'status_detail', object.status_detail) unless object.status_detail.nil?
      Writer.write_string(writer, 'stop_reason', object.stop_reason) unless object.stop_reason.nil?
      Writer.write_date(writer, 'stop_time', object.stop_time) unless object.stop_time.nil?
      Writer.write_string(writer, 'storage_error_resume_behaviour', object.storage_error_resume_behaviour) unless object.storage_error_resume_behaviour.nil?
      TimeZoneWriter.write_one(object.time_zone, writer, 'time_zone') unless object.time_zone.nil?
      Writer.write_boolean(writer, 'tunnel_migration', object.tunnel_migration) unless object.tunnel_migration.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      UsbWriter.write_one(object.usb, writer, 'usb') unless object.usb.nil?
      Writer.write_boolean(writer, 'use_latest_template_version', object.use_latest_template_version) unless object.use_latest_template_version.nil?
      VirtioScsiWriter.write_one(object.virtio_scsi, writer, 'virtio_scsi') unless object.virtio_scsi.nil?
      Writer.write_boolean(writer, 'virtio_scsi_multi_queues_enabled', object.virtio_scsi_multi_queues_enabled) unless object.virtio_scsi_multi_queues_enabled.nil?
      AffinityLabelWriter.write_many(object.affinity_labels, writer, 'affinity_label', 'affinity_labels') unless object.affinity_labels.nil?
      ApplicationWriter.write_many(object.applications, writer, 'application', 'applications') unless object.applications.nil?
      CdromWriter.write_many(object.cdroms, writer, 'cdrom', 'cdroms') unless object.cdroms.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      CpuProfileWriter.write_one(object.cpu_profile, writer, 'cpu_profile') unless object.cpu_profile.nil?
      DiskAttachmentWriter.write_many(object.disk_attachments, writer, 'disk_attachment', 'disk_attachments') unless object.disk_attachments.nil?
      DiskWriter.write_many(object.disks, writer, 'disk', 'disks') unless object.disks.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      FloppyWriter.write_many(object.floppies, writer, 'floppy', 'floppies') unless object.floppies.nil?
      GraphicsConsoleWriter.write_many(object.graphics_consoles, writer, 'graphics_console', 'graphics_consoles') unless object.graphics_consoles.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      HostDeviceWriter.write_many(object.host_devices, writer, 'host_device', 'host_devices') unless object.host_devices.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      KatelloErratumWriter.write_many(object.katello_errata, writer, 'katello_erratum', 'katello_errata') unless object.katello_errata.nil?
      NicWriter.write_many(object.nics, writer, 'nic', 'nics') unless object.nics.nil?
      NumaNodeWriter.write_many(object.numa_nodes, writer, 'host_numa_node', 'host_numa_nodes') unless object.numa_nodes.nil?
      TemplateWriter.write_one(object.original_template, writer, 'original_template') unless object.original_template.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      ReportedDeviceWriter.write_many(object.reported_devices, writer, 'reported_device', 'reported_devices') unless object.reported_devices.nil?
      SessionWriter.write_many(object.sessions, writer, 'session', 'sessions') unless object.sessions.nil?
      SnapshotWriter.write_many(object.snapshots, writer, 'snapshot', 'snapshots') unless object.snapshots.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmPoolWriter.write_one(object.vm_pool, writer, 'vm_pool') unless object.vm_pool.nil?
      WatchdogWriter.write_many(object.watchdogs, writer, 'watchdog', 'watchdogs') unless object.watchdogs.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'snapshot'
      plural ||= 'snapshots'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SpecialObjectsWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'special_objects'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      TemplateWriter.write_one(object.blank_template, writer, 'blank_template') unless object.blank_template.nil?
      TagWriter.write_one(object.root_tag, writer, 'root_tag') unless object.root_tag.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'special_objects'
      plural ||= 'special_objectss'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SpmWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'spm'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'priority', object.priority) unless object.priority.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'spm'
      plural ||= 'spms'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SshWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'ssh'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'authentication_method', object.authentication_method) unless object.authentication_method.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'fingerprint', object.fingerprint) unless object.fingerprint.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'public_key', object.public_key) unless object.public_key.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'ssh'
      plural ||= 'sshs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SshPublicKeyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'ssh_public_key'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content', object.content) unless object.content.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'ssh_public_key'
      plural ||= 'ssh_public_keys'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SsoWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'sso'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      MethodWriter.write_many(object.methods, writer, 'method', 'methods') unless object.methods.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'sso'
      plural ||= 'ssos'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class StatisticWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'statistic'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'kind', object.kind) unless object.kind.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'unit', object.unit) unless object.unit.nil?
      ValueWriter.write_many(object.values, writer, 'value', 'values') unless object.values.nil?
      GlusterBrickWriter.write_one(object.brick, writer, 'brick') unless object.brick.nil?
      DiskWriter.write_one(object.disk, writer, 'disk') unless object.disk.nil?
      GlusterVolumeWriter.write_one(object.gluster_volume, writer, 'gluster_volume') unless object.gluster_volume.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      HostNicWriter.write_one(object.host_nic, writer, 'host_nic') unless object.host_nic.nil?
      NumaNodeWriter.write_one(object.host_numa_node, writer, 'host_numa_node') unless object.host_numa_node.nil?
      NicWriter.write_one(object.nic, writer, 'nic') unless object.nic.nil?
      StepWriter.write_one(object.step, writer, 'step') unless object.step.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'statistic'
      plural ||= 'statistics'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class StepWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'step'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_date(writer, 'end_time', object.end_time) unless object.end_time.nil?
      Writer.write_boolean(writer, 'external', object.external) unless object.external.nil?
      Writer.write_string(writer, 'external_type', object.external_type) unless object.external_type.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'number', object.number) unless object.number.nil?
      Writer.write_integer(writer, 'progress', object.progress) unless object.progress.nil?
      Writer.write_date(writer, 'start_time', object.start_time) unless object.start_time.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      HostWriter.write_one(object.execution_host, writer, 'execution_host') unless object.execution_host.nil?
      JobWriter.write_one(object.job, writer, 'job') unless object.job.nil?
      StepWriter.write_one(object.parent_step, writer, 'parent_step') unless object.parent_step.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'step'
      plural ||= 'steps'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class StorageConnectionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'storage_connection'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'address', object.address) unless object.address.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'mount_options', object.mount_options) unless object.mount_options.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'nfs_retrans', object.nfs_retrans) unless object.nfs_retrans.nil?
      Writer.write_integer(writer, 'nfs_timeo', object.nfs_timeo) unless object.nfs_timeo.nil?
      Writer.write_string(writer, 'nfs_version', object.nfs_version) unless object.nfs_version.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_string(writer, 'path', object.path) unless object.path.nil?
      Writer.write_integer(writer, 'port', object.port) unless object.port.nil?
      Writer.write_string(writer, 'portal', object.portal) unless object.portal.nil?
      Writer.write_string(writer, 'target', object.target) unless object.target.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      Writer.write_string(writer, 'vfs_type', object.vfs_type) unless object.vfs_type.nil?
      GlusterVolumeWriter.write_one(object.gluster_volume, writer, 'gluster_volume') unless object.gluster_volume.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'storage_connection'
      plural ||= 'storage_connections'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class StorageConnectionExtensionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'storage_connection_extension'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_string(writer, 'target', object.target) unless object.target.nil?
      Writer.write_string(writer, 'username', object.username) unless object.username.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'storage_connection_extension'
      plural ||= 'storage_connection_extensions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class StorageDomainWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'storage_domain'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_integer(writer, 'available', object.available) unless object.available.nil?
      Writer.write_boolean(writer, 'backup', object.backup) unless object.backup.nil?
      Writer.write_integer(writer, 'block_size', object.block_size) unless object.block_size.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_integer(writer, 'committed', object.committed) unless object.committed.nil?
      Writer.write_integer(writer, 'critical_space_action_blocker', object.critical_space_action_blocker) unless object.critical_space_action_blocker.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'discard_after_delete', object.discard_after_delete) unless object.discard_after_delete.nil?
      Writer.write_string(writer, 'external_status', object.external_status) unless object.external_status.nil?
      Writer.write_boolean(writer, 'import', object.import) unless object.import.nil?
      Writer.write_boolean(writer, 'master', object.master) unless object.master.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      HostStorageWriter.write_one(object.storage, writer, 'storage') unless object.storage.nil?
      Writer.write_string(writer, 'storage_format', object.storage_format) unless object.storage_format.nil?
      Writer.write_boolean(writer, 'supports_discard', object.supports_discard) unless object.supports_discard.nil?
      Writer.write_boolean(writer, 'supports_discard_zeroes_data', object.supports_discard_zeroes_data) unless object.supports_discard_zeroes_data.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_integer(writer, 'used', object.used) unless object.used.nil?
      Writer.write_integer(writer, 'warning_low_space_indicator', object.warning_low_space_indicator) unless object.warning_low_space_indicator.nil?
      Writer.write_boolean(writer, 'wipe_after_delete', object.wipe_after_delete) unless object.wipe_after_delete.nil?
      DataCenterWriter.write_one(object.data_center, writer, 'data_center') unless object.data_center.nil?
      DataCenterWriter.write_many(object.data_centers, writer, 'data_center', 'data_centers') unless object.data_centers.nil?
      DiskProfileWriter.write_many(object.disk_profiles, writer, 'disk_profile', 'disk_profiles') unless object.disk_profiles.nil?
      DiskSnapshotWriter.write_many(object.disk_snapshots, writer, 'disk_snapshot', 'disk_snapshots') unless object.disk_snapshots.nil?
      DiskWriter.write_many(object.disks, writer, 'disk', 'disks') unless object.disks.nil?
      FileWriter.write_many(object.files, writer, 'file', 'files') unless object.files.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      ImageWriter.write_many(object.images, writer, 'image', 'images') unless object.images.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      StorageConnectionWriter.write_many(object.storage_connections, writer, 'storage_connection', 'storage_connections') unless object.storage_connections.nil?
      TemplateWriter.write_many(object.templates, writer, 'template', 'templates') unless object.templates.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'storage_domain'
      plural ||= 'storage_domains'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class StorageDomainLeaseWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'storage_domain_lease'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'storage_domain_lease'
      plural ||= 'storage_domain_leases'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SystemOptionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'system_option'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      SystemOptionValueWriter.write_many(object.values, writer, 'system_option_value', 'values') unless object.values.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'system_option'
      plural ||= 'system_options'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class SystemOptionValueWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'system_option_value'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      Writer.write_string(writer, 'version', object.version) unless object.version.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'system_option_value'
      plural ||= 'system_option_values'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class TagWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'tag'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      GroupWriter.write_one(object.group, writer, 'group') unless object.group.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      TagWriter.write_one(object.parent, writer, 'parent') unless object.parent.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'tag'
      plural ||= 'tags'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class TemplateWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'template'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      BiosWriter.write_one(object.bios, writer, 'bios') unless object.bios.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      ConsoleWriter.write_one(object.console, writer, 'console') unless object.console.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_integer(writer, 'cpu_shares', object.cpu_shares) unless object.cpu_shares.nil?
      Writer.write_date(writer, 'creation_time', object.creation_time) unless object.creation_time.nil?
      VersionWriter.write_one(object.custom_compatibility_version, writer, 'custom_compatibility_version') unless object.custom_compatibility_version.nil?
      Writer.write_string(writer, 'custom_cpu_model', object.custom_cpu_model) unless object.custom_cpu_model.nil?
      Writer.write_string(writer, 'custom_emulated_machine', object.custom_emulated_machine) unless object.custom_emulated_machine.nil?
      CustomPropertyWriter.write_many(object.custom_properties, writer, 'custom_property', 'custom_properties') unless object.custom_properties.nil?
      Writer.write_boolean(writer, 'delete_protected', object.delete_protected) unless object.delete_protected.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      HighAvailabilityWriter.write_one(object.high_availability, writer, 'high_availability') unless object.high_availability.nil?
      InitializationWriter.write_one(object.initialization, writer, 'initialization') unless object.initialization.nil?
      IoWriter.write_one(object.io, writer, 'io') unless object.io.nil?
      IconWriter.write_one(object.large_icon, writer, 'large_icon') unless object.large_icon.nil?
      StorageDomainLeaseWriter.write_one(object.lease, writer, 'lease') unless object.lease.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      MemoryPolicyWriter.write_one(object.memory_policy, writer, 'memory_policy') unless object.memory_policy.nil?
      MigrationOptionsWriter.write_one(object.migration, writer, 'migration') unless object.migration.nil?
      Writer.write_integer(writer, 'migration_downtime', object.migration_downtime) unless object.migration_downtime.nil?
      Writer.write_boolean(writer, 'multi_queues_enabled', object.multi_queues_enabled) unless object.multi_queues_enabled.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'origin', object.origin) unless object.origin.nil?
      OperatingSystemWriter.write_one(object.os, writer, 'os') unless object.os.nil?
      VmPlacementPolicyWriter.write_one(object.placement_policy, writer, 'placement_policy') unless object.placement_policy.nil?
      RngDeviceWriter.write_one(object.rng_device, writer, 'rng_device') unless object.rng_device.nil?
      SerialNumberWriter.write_one(object.serial_number, writer, 'serial_number') unless object.serial_number.nil?
      IconWriter.write_one(object.small_icon, writer, 'small_icon') unless object.small_icon.nil?
      Writer.write_boolean(writer, 'soundcard_enabled', object.soundcard_enabled) unless object.soundcard_enabled.nil?
      SsoWriter.write_one(object.sso, writer, 'sso') unless object.sso.nil?
      Writer.write_boolean(writer, 'start_paused', object.start_paused) unless object.start_paused.nil?
      Writer.write_boolean(writer, 'stateless', object.stateless) unless object.stateless.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'storage_error_resume_behaviour', object.storage_error_resume_behaviour) unless object.storage_error_resume_behaviour.nil?
      TimeZoneWriter.write_one(object.time_zone, writer, 'time_zone') unless object.time_zone.nil?
      Writer.write_boolean(writer, 'tunnel_migration', object.tunnel_migration) unless object.tunnel_migration.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      UsbWriter.write_one(object.usb, writer, 'usb') unless object.usb.nil?
      TemplateVersionWriter.write_one(object.version, writer, 'version') unless object.version.nil?
      VirtioScsiWriter.write_one(object.virtio_scsi, writer, 'virtio_scsi') unless object.virtio_scsi.nil?
      Writer.write_boolean(writer, 'virtio_scsi_multi_queues_enabled', object.virtio_scsi_multi_queues_enabled) unless object.virtio_scsi_multi_queues_enabled.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      CdromWriter.write_many(object.cdroms, writer, 'cdrom', 'cdroms') unless object.cdroms.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      CpuProfileWriter.write_one(object.cpu_profile, writer, 'cpu_profile') unless object.cpu_profile.nil?
      DiskAttachmentWriter.write_many(object.disk_attachments, writer, 'disk_attachment', 'disk_attachments') unless object.disk_attachments.nil?
      GraphicsConsoleWriter.write_many(object.graphics_consoles, writer, 'graphics_console', 'graphics_consoles') unless object.graphics_consoles.nil?
      NicWriter.write_many(object.nics, writer, 'nic', 'nics') unless object.nics.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      WatchdogWriter.write_many(object.watchdogs, writer, 'watchdog', 'watchdogs') unless object.watchdogs.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'template'
      plural ||= 'templates'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class TemplateVersionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'template_version'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'version_name', object.version_name) unless object.version_name.nil?
      Writer.write_integer(writer, 'version_number', object.version_number) unless object.version_number.nil?
      TemplateWriter.write_one(object.base_template, writer, 'base_template') unless object.base_template.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'template_version'
      plural ||= 'template_versions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class TicketWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'ticket'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'expiry', object.expiry) unless object.expiry.nil?
      Writer.write_string(writer, 'value', object.value) unless object.value.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'ticket'
      plural ||= 'tickets'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class TimeZoneWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'time_zone'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'utc_offset', object.utc_offset) unless object.utc_offset.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'time_zone'
      plural ||= 'time_zones'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class TransparentHugePagesWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'transparent_hugepages'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'transparent_hugepages'
      plural ||= 'transparent_huge_pagess'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class UnmanagedNetworkWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'unmanaged_network'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      HostNicWriter.write_one(object.host_nic, writer, 'host_nic') unless object.host_nic.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'unmanaged_network'
      plural ||= 'unmanaged_networks'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class UsbWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'usb'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'usb'
      plural ||= 'usbs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class UserWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'user'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'department', object.department) unless object.department.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'domain_entry_id', object.domain_entry_id) unless object.domain_entry_id.nil?
      Writer.write_string(writer, 'email', object.email) unless object.email.nil?
      Writer.write_string(writer, 'last_name', object.last_name) unless object.last_name.nil?
      Writer.write_boolean(writer, 'logged_in', object.logged_in) unless object.logged_in.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'namespace', object.namespace) unless object.namespace.nil?
      Writer.write_string(writer, 'password', object.password) unless object.password.nil?
      Writer.write_string(writer, 'principal', object.principal) unless object.principal.nil?
      Writer.write_string(writer, 'user_name', object.user_name) unless object.user_name.nil?
      PropertyWriter.write_many(object.user_options, writer, 'property', 'user_options') unless object.user_options.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      GroupWriter.write_many(object.groups, writer, 'group', 'groups') unless object.groups.nil?
      UserOptionWriter.write_many(object.options, writer, 'user_option', 'options') unless object.options.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      RoleWriter.write_many(object.roles, writer, 'role', 'roles') unless object.roles.nil?
      SshPublicKeyWriter.write_many(object.ssh_public_keys, writer, 'ssh_public_key', 'ssh_public_keys') unless object.ssh_public_keys.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'user'
      plural ||= 'users'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class UserOptionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'user_option'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'content', object.content) unless object.content.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      UserWriter.write_one(object.user, writer, 'user') unless object.user.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'user_option'
      plural ||= 'user_options'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class ValueWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'value'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_decimal(writer, 'datum', object.datum) unless object.datum.nil?
      Writer.write_string(writer, 'detail', object.detail) unless object.detail.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'value'
      plural ||= 'values'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VcpuPinWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vcpu_pin'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'cpu_set', object.cpu_set) unless object.cpu_set.nil?
      Writer.write_integer(writer, 'vcpu', object.vcpu) unless object.vcpu.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vcpu_pin'
      plural ||= 'vcpu_pins'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VendorWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vendor'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vendor'
      plural ||= 'vendors'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VersionWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'version'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_integer(writer, 'build', object.build) unless object.build.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'full_version', object.full_version) unless object.full_version.nil?
      Writer.write_integer(writer, 'major', object.major) unless object.major.nil?
      Writer.write_integer(writer, 'minor', object.minor) unless object.minor.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'revision', object.revision) unless object.revision.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'version'
      plural ||= 'versions'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VirtioScsiWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'virtio_scsi'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_boolean(writer, 'enabled', object.enabled) unless object.enabled.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'virtio_scsi'
      plural ||= 'virtio_scsis'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VirtualNumaNodeWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vm_numa_node'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'index', object.index) unless object.index.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'node_distance', object.node_distance) unless object.node_distance.nil?
      NumaNodePinWriter.write_many(object.numa_node_pins, writer, 'numa_node_pin', 'numa_node_pins') unless object.numa_node_pins.nil?
      Writer.write_string(writer, 'numa_tune_mode', object.numa_tune_mode) unless object.numa_tune_mode.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vm_numa_node'
      plural ||= 'vm_numa_nodes'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VlanWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vlan'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id.to_s) unless object.id.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vlan'
      plural ||= 'vlans'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VmWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vm'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      BiosWriter.write_one(object.bios, writer, 'bios') unless object.bios.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      ConsoleWriter.write_one(object.console, writer, 'console') unless object.console.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_integer(writer, 'cpu_shares', object.cpu_shares) unless object.cpu_shares.nil?
      Writer.write_date(writer, 'creation_time', object.creation_time) unless object.creation_time.nil?
      VersionWriter.write_one(object.custom_compatibility_version, writer, 'custom_compatibility_version') unless object.custom_compatibility_version.nil?
      Writer.write_string(writer, 'custom_cpu_model', object.custom_cpu_model) unless object.custom_cpu_model.nil?
      Writer.write_string(writer, 'custom_emulated_machine', object.custom_emulated_machine) unless object.custom_emulated_machine.nil?
      CustomPropertyWriter.write_many(object.custom_properties, writer, 'custom_property', 'custom_properties') unless object.custom_properties.nil?
      Writer.write_boolean(writer, 'delete_protected', object.delete_protected) unless object.delete_protected.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      Writer.write_string(writer, 'fqdn', object.fqdn) unless object.fqdn.nil?
      GuestOperatingSystemWriter.write_one(object.guest_operating_system, writer, 'guest_operating_system') unless object.guest_operating_system.nil?
      TimeZoneWriter.write_one(object.guest_time_zone, writer, 'guest_time_zone') unless object.guest_time_zone.nil?
      Writer.write_boolean(writer, 'has_illegal_images', object.has_illegal_images) unless object.has_illegal_images.nil?
      HighAvailabilityWriter.write_one(object.high_availability, writer, 'high_availability') unless object.high_availability.nil?
      InitializationWriter.write_one(object.initialization, writer, 'initialization') unless object.initialization.nil?
      IoWriter.write_one(object.io, writer, 'io') unless object.io.nil?
      IconWriter.write_one(object.large_icon, writer, 'large_icon') unless object.large_icon.nil?
      StorageDomainLeaseWriter.write_one(object.lease, writer, 'lease') unless object.lease.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      MemoryPolicyWriter.write_one(object.memory_policy, writer, 'memory_policy') unless object.memory_policy.nil?
      MigrationOptionsWriter.write_one(object.migration, writer, 'migration') unless object.migration.nil?
      Writer.write_integer(writer, 'migration_downtime', object.migration_downtime) unless object.migration_downtime.nil?
      Writer.write_boolean(writer, 'multi_queues_enabled', object.multi_queues_enabled) unless object.multi_queues_enabled.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_boolean(writer, 'next_run_configuration_exists', object.next_run_configuration_exists) unless object.next_run_configuration_exists.nil?
      Writer.write_string(writer, 'numa_tune_mode', object.numa_tune_mode) unless object.numa_tune_mode.nil?
      Writer.write_string(writer, 'origin', object.origin) unless object.origin.nil?
      OperatingSystemWriter.write_one(object.os, writer, 'os') unless object.os.nil?
      PayloadWriter.write_many(object.payloads, writer, 'payload', 'payloads') unless object.payloads.nil?
      VmPlacementPolicyWriter.write_one(object.placement_policy, writer, 'placement_policy') unless object.placement_policy.nil?
      RngDeviceWriter.write_one(object.rng_device, writer, 'rng_device') unless object.rng_device.nil?
      Writer.write_boolean(writer, 'run_once', object.run_once) unless object.run_once.nil?
      SerialNumberWriter.write_one(object.serial_number, writer, 'serial_number') unless object.serial_number.nil?
      IconWriter.write_one(object.small_icon, writer, 'small_icon') unless object.small_icon.nil?
      Writer.write_boolean(writer, 'soundcard_enabled', object.soundcard_enabled) unless object.soundcard_enabled.nil?
      SsoWriter.write_one(object.sso, writer, 'sso') unless object.sso.nil?
      Writer.write_boolean(writer, 'start_paused', object.start_paused) unless object.start_paused.nil?
      Writer.write_date(writer, 'start_time', object.start_time) unless object.start_time.nil?
      Writer.write_boolean(writer, 'stateless', object.stateless) unless object.stateless.nil?
      Writer.write_string(writer, 'status', object.status) unless object.status.nil?
      Writer.write_string(writer, 'status_detail', object.status_detail) unless object.status_detail.nil?
      Writer.write_string(writer, 'stop_reason', object.stop_reason) unless object.stop_reason.nil?
      Writer.write_date(writer, 'stop_time', object.stop_time) unless object.stop_time.nil?
      Writer.write_string(writer, 'storage_error_resume_behaviour', object.storage_error_resume_behaviour) unless object.storage_error_resume_behaviour.nil?
      TimeZoneWriter.write_one(object.time_zone, writer, 'time_zone') unless object.time_zone.nil?
      Writer.write_boolean(writer, 'tunnel_migration', object.tunnel_migration) unless object.tunnel_migration.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      UsbWriter.write_one(object.usb, writer, 'usb') unless object.usb.nil?
      Writer.write_boolean(writer, 'use_latest_template_version', object.use_latest_template_version) unless object.use_latest_template_version.nil?
      VirtioScsiWriter.write_one(object.virtio_scsi, writer, 'virtio_scsi') unless object.virtio_scsi.nil?
      Writer.write_boolean(writer, 'virtio_scsi_multi_queues_enabled', object.virtio_scsi_multi_queues_enabled) unless object.virtio_scsi_multi_queues_enabled.nil?
      AffinityLabelWriter.write_many(object.affinity_labels, writer, 'affinity_label', 'affinity_labels') unless object.affinity_labels.nil?
      ApplicationWriter.write_many(object.applications, writer, 'application', 'applications') unless object.applications.nil?
      CdromWriter.write_many(object.cdroms, writer, 'cdrom', 'cdroms') unless object.cdroms.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      CpuProfileWriter.write_one(object.cpu_profile, writer, 'cpu_profile') unless object.cpu_profile.nil?
      DiskAttachmentWriter.write_many(object.disk_attachments, writer, 'disk_attachment', 'disk_attachments') unless object.disk_attachments.nil?
      ExternalHostProviderWriter.write_one(object.external_host_provider, writer, 'external_host_provider') unless object.external_host_provider.nil?
      FloppyWriter.write_many(object.floppies, writer, 'floppy', 'floppies') unless object.floppies.nil?
      GraphicsConsoleWriter.write_many(object.graphics_consoles, writer, 'graphics_console', 'graphics_consoles') unless object.graphics_consoles.nil?
      HostWriter.write_one(object.host, writer, 'host') unless object.host.nil?
      HostDeviceWriter.write_many(object.host_devices, writer, 'host_device', 'host_devices') unless object.host_devices.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      KatelloErratumWriter.write_many(object.katello_errata, writer, 'katello_erratum', 'katello_errata') unless object.katello_errata.nil?
      NicWriter.write_many(object.nics, writer, 'nic', 'nics') unless object.nics.nil?
      NumaNodeWriter.write_many(object.numa_nodes, writer, 'host_numa_node', 'host_numa_nodes') unless object.numa_nodes.nil?
      TemplateWriter.write_one(object.original_template, writer, 'original_template') unless object.original_template.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      ReportedDeviceWriter.write_many(object.reported_devices, writer, 'reported_device', 'reported_devices') unless object.reported_devices.nil?
      SessionWriter.write_many(object.sessions, writer, 'session', 'sessions') unless object.sessions.nil?
      SnapshotWriter.write_many(object.snapshots, writer, 'snapshot', 'snapshots') unless object.snapshots.nil?
      StatisticWriter.write_many(object.statistics, writer, 'statistic', 'statistics') unless object.statistics.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      TagWriter.write_many(object.tags, writer, 'tag', 'tags') unless object.tags.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmPoolWriter.write_one(object.vm_pool, writer, 'vm_pool') unless object.vm_pool.nil?
      WatchdogWriter.write_many(object.watchdogs, writer, 'watchdog', 'watchdogs') unless object.watchdogs.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vm'
      plural ||= 'vms'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VmBaseWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vm_base'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      BiosWriter.write_one(object.bios, writer, 'bios') unless object.bios.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      ConsoleWriter.write_one(object.console, writer, 'console') unless object.console.nil?
      CpuWriter.write_one(object.cpu, writer, 'cpu') unless object.cpu.nil?
      Writer.write_integer(writer, 'cpu_shares', object.cpu_shares) unless object.cpu_shares.nil?
      Writer.write_date(writer, 'creation_time', object.creation_time) unless object.creation_time.nil?
      VersionWriter.write_one(object.custom_compatibility_version, writer, 'custom_compatibility_version') unless object.custom_compatibility_version.nil?
      Writer.write_string(writer, 'custom_cpu_model', object.custom_cpu_model) unless object.custom_cpu_model.nil?
      Writer.write_string(writer, 'custom_emulated_machine', object.custom_emulated_machine) unless object.custom_emulated_machine.nil?
      CustomPropertyWriter.write_many(object.custom_properties, writer, 'custom_property', 'custom_properties') unless object.custom_properties.nil?
      Writer.write_boolean(writer, 'delete_protected', object.delete_protected) unless object.delete_protected.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      DomainWriter.write_one(object.domain, writer, 'domain') unless object.domain.nil?
      HighAvailabilityWriter.write_one(object.high_availability, writer, 'high_availability') unless object.high_availability.nil?
      InitializationWriter.write_one(object.initialization, writer, 'initialization') unless object.initialization.nil?
      IoWriter.write_one(object.io, writer, 'io') unless object.io.nil?
      IconWriter.write_one(object.large_icon, writer, 'large_icon') unless object.large_icon.nil?
      StorageDomainLeaseWriter.write_one(object.lease, writer, 'lease') unless object.lease.nil?
      Writer.write_integer(writer, 'memory', object.memory) unless object.memory.nil?
      MemoryPolicyWriter.write_one(object.memory_policy, writer, 'memory_policy') unless object.memory_policy.nil?
      MigrationOptionsWriter.write_one(object.migration, writer, 'migration') unless object.migration.nil?
      Writer.write_integer(writer, 'migration_downtime', object.migration_downtime) unless object.migration_downtime.nil?
      Writer.write_boolean(writer, 'multi_queues_enabled', object.multi_queues_enabled) unless object.multi_queues_enabled.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_string(writer, 'origin', object.origin) unless object.origin.nil?
      OperatingSystemWriter.write_one(object.os, writer, 'os') unless object.os.nil?
      VmPlacementPolicyWriter.write_one(object.placement_policy, writer, 'placement_policy') unless object.placement_policy.nil?
      RngDeviceWriter.write_one(object.rng_device, writer, 'rng_device') unless object.rng_device.nil?
      SerialNumberWriter.write_one(object.serial_number, writer, 'serial_number') unless object.serial_number.nil?
      IconWriter.write_one(object.small_icon, writer, 'small_icon') unless object.small_icon.nil?
      Writer.write_boolean(writer, 'soundcard_enabled', object.soundcard_enabled) unless object.soundcard_enabled.nil?
      SsoWriter.write_one(object.sso, writer, 'sso') unless object.sso.nil?
      Writer.write_boolean(writer, 'start_paused', object.start_paused) unless object.start_paused.nil?
      Writer.write_boolean(writer, 'stateless', object.stateless) unless object.stateless.nil?
      Writer.write_string(writer, 'storage_error_resume_behaviour', object.storage_error_resume_behaviour) unless object.storage_error_resume_behaviour.nil?
      TimeZoneWriter.write_one(object.time_zone, writer, 'time_zone') unless object.time_zone.nil?
      Writer.write_boolean(writer, 'tunnel_migration', object.tunnel_migration) unless object.tunnel_migration.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      UsbWriter.write_one(object.usb, writer, 'usb') unless object.usb.nil?
      VirtioScsiWriter.write_one(object.virtio_scsi, writer, 'virtio_scsi') unless object.virtio_scsi.nil?
      Writer.write_boolean(writer, 'virtio_scsi_multi_queues_enabled', object.virtio_scsi_multi_queues_enabled) unless object.virtio_scsi_multi_queues_enabled.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      CpuProfileWriter.write_one(object.cpu_profile, writer, 'cpu_profile') unless object.cpu_profile.nil?
      QuotaWriter.write_one(object.quota, writer, 'quota') unless object.quota.nil?
      StorageDomainWriter.write_one(object.storage_domain, writer, 'storage_domain') unless object.storage_domain.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vm_base'
      plural ||= 'vm_bases'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VmPlacementPolicyWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vm_placement_policy'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'affinity', object.affinity) unless object.affinity.nil?
      HostWriter.write_many(object.hosts, writer, 'host', 'hosts') unless object.hosts.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vm_placement_policy'
      plural ||= 'vm_placement_policies'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VmPoolWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vm_pool'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_boolean(writer, 'auto_storage_select', object.auto_storage_select) unless object.auto_storage_select.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      DisplayWriter.write_one(object.display, writer, 'display') unless object.display.nil?
      Writer.write_integer(writer, 'max_user_vms', object.max_user_vms) unless object.max_user_vms.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      Writer.write_integer(writer, 'prestarted_vms', object.prestarted_vms) unless object.prestarted_vms.nil?
      RngDeviceWriter.write_one(object.rng_device, writer, 'rng_device') unless object.rng_device.nil?
      Writer.write_integer(writer, 'size', object.size) unless object.size.nil?
      Writer.write_boolean(writer, 'soundcard_enabled', object.soundcard_enabled) unless object.soundcard_enabled.nil?
      Writer.write_boolean(writer, 'stateful', object.stateful) unless object.stateful.nil?
      Writer.write_string(writer, 'type', object.type) unless object.type.nil?
      Writer.write_boolean(writer, 'use_latest_template_version', object.use_latest_template_version) unless object.use_latest_template_version.nil?
      ClusterWriter.write_one(object.cluster, writer, 'cluster') unless object.cluster.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vm_pool'
      plural ||= 'vm_pools'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VmSummaryWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vm_summary'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_integer(writer, 'active', object.active) unless object.active.nil?
      Writer.write_integer(writer, 'migrating', object.migrating) unless object.migrating.nil?
      Writer.write_integer(writer, 'total', object.total) unless object.total.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vm_summary'
      plural ||= 'vm_summaries'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VnicPassThroughWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vnic_pass_through'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'mode', object.mode) unless object.mode.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vnic_pass_through'
      plural ||= 'vnic_pass_throughs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VnicProfileWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vnic_profile'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      CustomPropertyWriter.write_many(object.custom_properties, writer, 'custom_property', 'custom_properties') unless object.custom_properties.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_boolean(writer, 'migratable', object.migratable) unless object.migratable.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      VnicPassThroughWriter.write_one(object.pass_through, writer, 'pass_through') unless object.pass_through.nil?
      Writer.write_boolean(writer, 'port_mirroring', object.port_mirroring) unless object.port_mirroring.nil?
      NetworkWriter.write_one(object.network, writer, 'network') unless object.network.nil?
      NetworkFilterWriter.write_one(object.network_filter, writer, 'network_filter') unless object.network_filter.nil?
      PermissionWriter.write_many(object.permissions, writer, 'permission', 'permissions') unless object.permissions.nil?
      QosWriter.write_one(object.qos, writer, 'qos') unless object.qos.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vnic_profile'
      plural ||= 'vnic_profiles'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VnicProfileMappingWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'vnic_profile_mapping'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      Writer.write_string(writer, 'source_network_name', object.source_network_name) unless object.source_network_name.nil?
      Writer.write_string(writer, 'source_network_profile_name', object.source_network_profile_name) unless object.source_network_profile_name.nil?
      VnicProfileWriter.write_one(object.target_vnic_profile, writer, 'target_vnic_profile') unless object.target_vnic_profile.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'vnic_profile_mapping'
      plural ||= 'vnic_profile_mappings'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class VolumeGroupWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'volume_group'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      LogicalUnitWriter.write_many(object.logical_units, writer, 'logical_unit', 'logical_units') unless object.logical_units.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'volume_group'
      plural ||= 'volume_groups'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class WatchdogWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'watchdog'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'action', object.action) unless object.action.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_string(writer, 'model', object.model) unless object.model.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      InstanceTypeWriter.write_one(object.instance_type, writer, 'instance_type') unless object.instance_type.nil?
      TemplateWriter.write_one(object.template, writer, 'template') unless object.template.nil?
      VmWriter.write_one(object.vm, writer, 'vm') unless object.vm.nil?
      VmWriter.write_many(object.vms, writer, 'vm', 'vms') unless object.vms.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'watchdog'
      plural ||= 'watchdogs'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  class WeightWriter < Writer
    
    def self.write_one(object, writer, singular = nil)
      singular ||= 'weight'
      writer.write_start(singular)
      href = object.href
      writer.write_attribute('href', href) unless href.nil?
      writer.write_attribute('id', object.id) unless object.id.nil?
      Writer.write_string(writer, 'comment', object.comment) unless object.comment.nil?
      Writer.write_string(writer, 'description', object.description) unless object.description.nil?
      Writer.write_integer(writer, 'factor', object.factor) unless object.factor.nil?
      Writer.write_string(writer, 'name', object.name) unless object.name.nil?
      SchedulingPolicyWriter.write_one(object.scheduling_policy, writer, 'scheduling_policy') unless object.scheduling_policy.nil?
      SchedulingPolicyUnitWriter.write_one(object.scheduling_policy_unit, writer, 'scheduling_policy_unit') unless object.scheduling_policy_unit.nil?
      writer.write_end
    end
    
    def self.write_many(list, writer, singular = nil, plural = nil)
      singular ||= 'weight'
      plural ||= 'weights'
      writer.write_start(plural)
      if list.is_a?(List)
        href = list.href
        writer.write_attribute('href', href) unless href.nil?
      end
      list.each do |item|
        write_one(item, writer, singular)
      end
      writer.write_end
    end
    
  end
  
  Writer.register(Action, ActionWriter.method(:write_one))
  Writer.register(AffinityGroup, AffinityGroupWriter.method(:write_one))
  Writer.register(AffinityLabel, AffinityLabelWriter.method(:write_one))
  Writer.register(AffinityRule, AffinityRuleWriter.method(:write_one))
  Writer.register(Agent, AgentWriter.method(:write_one))
  Writer.register(AgentConfiguration, AgentConfigurationWriter.method(:write_one))
  Writer.register(Api, ApiWriter.method(:write_one))
  Writer.register(ApiSummary, ApiSummaryWriter.method(:write_one))
  Writer.register(ApiSummaryItem, ApiSummaryItemWriter.method(:write_one))
  Writer.register(Application, ApplicationWriter.method(:write_one))
  Writer.register(AuthorizedKey, AuthorizedKeyWriter.method(:write_one))
  Writer.register(Backup, BackupWriter.method(:write_one))
  Writer.register(Balance, BalanceWriter.method(:write_one))
  Writer.register(Bios, BiosWriter.method(:write_one))
  Writer.register(BlockStatistic, BlockStatisticWriter.method(:write_one))
  Writer.register(Bonding, BondingWriter.method(:write_one))
  Writer.register(Bookmark, BookmarkWriter.method(:write_one))
  Writer.register(Boot, BootWriter.method(:write_one))
  Writer.register(BootMenu, BootMenuWriter.method(:write_one))
  Writer.register(BrickProfileDetail, BrickProfileDetailWriter.method(:write_one))
  Writer.register(Cdrom, CdromWriter.method(:write_one))
  Writer.register(Certificate, CertificateWriter.method(:write_one))
  Writer.register(Checkpoint, CheckpointWriter.method(:write_one))
  Writer.register(CloudInit, CloudInitWriter.method(:write_one))
  Writer.register(Cluster, ClusterWriter.method(:write_one))
  Writer.register(ClusterFeature, ClusterFeatureWriter.method(:write_one))
  Writer.register(ClusterLevel, ClusterLevelWriter.method(:write_one))
  Writer.register(Configuration, ConfigurationWriter.method(:write_one))
  Writer.register(Console, ConsoleWriter.method(:write_one))
  Writer.register(Core, CoreWriter.method(:write_one))
  Writer.register(Cpu, CpuWriter.method(:write_one))
  Writer.register(CpuProfile, CpuProfileWriter.method(:write_one))
  Writer.register(CpuTopology, CpuTopologyWriter.method(:write_one))
  Writer.register(CpuTune, CpuTuneWriter.method(:write_one))
  Writer.register(CpuType, CpuTypeWriter.method(:write_one))
  Writer.register(CustomProperty, CustomPropertyWriter.method(:write_one))
  Writer.register(DataCenter, DataCenterWriter.method(:write_one))
  Writer.register(Device, DeviceWriter.method(:write_one))
  Writer.register(Disk, DiskWriter.method(:write_one))
  Writer.register(DiskAttachment, DiskAttachmentWriter.method(:write_one))
  Writer.register(DiskProfile, DiskProfileWriter.method(:write_one))
  Writer.register(DiskSnapshot, DiskSnapshotWriter.method(:write_one))
  Writer.register(Display, DisplayWriter.method(:write_one))
  Writer.register(Dns, DnsWriter.method(:write_one))
  Writer.register(DnsResolverConfiguration, DnsResolverConfigurationWriter.method(:write_one))
  Writer.register(Domain, DomainWriter.method(:write_one))
  Writer.register(EntityProfileDetail, EntityProfileDetailWriter.method(:write_one))
  Writer.register(ErrorHandling, ErrorHandlingWriter.method(:write_one))
  Writer.register(Event, EventWriter.method(:write_one))
  Writer.register(EventSubscription, EventSubscriptionWriter.method(:write_one))
  Writer.register(ExternalComputeResource, ExternalComputeResourceWriter.method(:write_one))
  Writer.register(ExternalDiscoveredHost, ExternalDiscoveredHostWriter.method(:write_one))
  Writer.register(ExternalHost, ExternalHostWriter.method(:write_one))
  Writer.register(ExternalHostGroup, ExternalHostGroupWriter.method(:write_one))
  Writer.register(ExternalHostProvider, ExternalHostProviderWriter.method(:write_one))
  Writer.register(ExternalNetworkProviderConfiguration, ExternalNetworkProviderConfigurationWriter.method(:write_one))
  Writer.register(ExternalProvider, ExternalProviderWriter.method(:write_one))
  Writer.register(ExternalVmImport, ExternalVmImportWriter.method(:write_one))
  Writer.register(Fault, FaultWriter.method(:write_one))
  Writer.register(FencingPolicy, FencingPolicyWriter.method(:write_one))
  Writer.register(File, FileWriter.method(:write_one))
  Writer.register(Filter, FilterWriter.method(:write_one))
  Writer.register(Floppy, FloppyWriter.method(:write_one))
  Writer.register(FopStatistic, FopStatisticWriter.method(:write_one))
  Writer.register(GlusterBrick, GlusterBrickWriter.method(:write_one))
  Writer.register(GlusterBrickAdvancedDetails, GlusterBrickAdvancedDetailsWriter.method(:write_one))
  Writer.register(GlusterBrickMemoryInfo, GlusterBrickMemoryInfoWriter.method(:write_one))
  Writer.register(GlusterClient, GlusterClientWriter.method(:write_one))
  Writer.register(GlusterHook, GlusterHookWriter.method(:write_one))
  Writer.register(GlusterMemoryPool, GlusterMemoryPoolWriter.method(:write_one))
  Writer.register(GlusterServerHook, GlusterServerHookWriter.method(:write_one))
  Writer.register(GlusterVolume, GlusterVolumeWriter.method(:write_one))
  Writer.register(GlusterVolumeProfileDetails, GlusterVolumeProfileDetailsWriter.method(:write_one))
  Writer.register(GracePeriod, GracePeriodWriter.method(:write_one))
  Writer.register(GraphicsConsole, GraphicsConsoleWriter.method(:write_one))
  Writer.register(Group, GroupWriter.method(:write_one))
  Writer.register(GuestOperatingSystem, GuestOperatingSystemWriter.method(:write_one))
  Writer.register(HardwareInformation, HardwareInformationWriter.method(:write_one))
  Writer.register(HighAvailability, HighAvailabilityWriter.method(:write_one))
  Writer.register(Hook, HookWriter.method(:write_one))
  Writer.register(Host, HostWriter.method(:write_one))
  Writer.register(HostDevice, HostDeviceWriter.method(:write_one))
  Writer.register(HostDevicePassthrough, HostDevicePassthroughWriter.method(:write_one))
  Writer.register(HostNic, HostNicWriter.method(:write_one))
  Writer.register(HostNicVirtualFunctionsConfiguration, HostNicVirtualFunctionsConfigurationWriter.method(:write_one))
  Writer.register(HostStorage, HostStorageWriter.method(:write_one))
  Writer.register(HostedEngine, HostedEngineWriter.method(:write_one))
  Writer.register(Icon, IconWriter.method(:write_one))
  Writer.register(Identified, IdentifiedWriter.method(:write_one))
  Writer.register(Image, ImageWriter.method(:write_one))
  Writer.register(ImageTransfer, ImageTransferWriter.method(:write_one))
  Writer.register(Initialization, InitializationWriter.method(:write_one))
  Writer.register(InstanceType, InstanceTypeWriter.method(:write_one))
  Writer.register(Io, IoWriter.method(:write_one))
  Writer.register(Ip, IpWriter.method(:write_one))
  Writer.register(IpAddressAssignment, IpAddressAssignmentWriter.method(:write_one))
  Writer.register(IscsiBond, IscsiBondWriter.method(:write_one))
  Writer.register(IscsiDetails, IscsiDetailsWriter.method(:write_one))
  Writer.register(Job, JobWriter.method(:write_one))
  Writer.register(KatelloErratum, KatelloErratumWriter.method(:write_one))
  Writer.register(Kernel, KernelWriter.method(:write_one))
  Writer.register(Ksm, KsmWriter.method(:write_one))
  Writer.register(LinkLayerDiscoveryProtocolElement, LinkLayerDiscoveryProtocolElementWriter.method(:write_one))
  Writer.register(LogicalUnit, LogicalUnitWriter.method(:write_one))
  Writer.register(MDevType, MDevTypeWriter.method(:write_one))
  Writer.register(Mac, MacWriter.method(:write_one))
  Writer.register(MacPool, MacPoolWriter.method(:write_one))
  Writer.register(MemoryOverCommit, MemoryOverCommitWriter.method(:write_one))
  Writer.register(MemoryPolicy, MemoryPolicyWriter.method(:write_one))
  Writer.register(Method, MethodWriter.method(:write_one))
  Writer.register(MigrationBandwidth, MigrationBandwidthWriter.method(:write_one))
  Writer.register(MigrationOptions, MigrationOptionsWriter.method(:write_one))
  Writer.register(MigrationPolicy, MigrationPolicyWriter.method(:write_one))
  Writer.register(Network, NetworkWriter.method(:write_one))
  Writer.register(NetworkAttachment, NetworkAttachmentWriter.method(:write_one))
  Writer.register(NetworkConfiguration, NetworkConfigurationWriter.method(:write_one))
  Writer.register(NetworkFilter, NetworkFilterWriter.method(:write_one))
  Writer.register(NetworkFilterParameter, NetworkFilterParameterWriter.method(:write_one))
  Writer.register(NetworkLabel, NetworkLabelWriter.method(:write_one))
  Writer.register(NfsProfileDetail, NfsProfileDetailWriter.method(:write_one))
  Writer.register(Nic, NicWriter.method(:write_one))
  Writer.register(NicConfiguration, NicConfigurationWriter.method(:write_one))
  Writer.register(NumaNode, NumaNodeWriter.method(:write_one))
  Writer.register(NumaNodePin, NumaNodePinWriter.method(:write_one))
  Writer.register(OpenStackImage, OpenStackImageWriter.method(:write_one))
  Writer.register(OpenStackImageProvider, OpenStackImageProviderWriter.method(:write_one))
  Writer.register(OpenStackNetwork, OpenStackNetworkWriter.method(:write_one))
  Writer.register(OpenStackNetworkProvider, OpenStackNetworkProviderWriter.method(:write_one))
  Writer.register(OpenStackProvider, OpenStackProviderWriter.method(:write_one))
  Writer.register(OpenStackSubnet, OpenStackSubnetWriter.method(:write_one))
  Writer.register(OpenStackVolumeProvider, OpenStackVolumeProviderWriter.method(:write_one))
  Writer.register(OpenStackVolumeType, OpenStackVolumeTypeWriter.method(:write_one))
  Writer.register(OpenstackVolumeAuthenticationKey, OpenstackVolumeAuthenticationKeyWriter.method(:write_one))
  Writer.register(OperatingSystem, OperatingSystemWriter.method(:write_one))
  Writer.register(OperatingSystemInfo, OperatingSystemInfoWriter.method(:write_one))
  Writer.register(Option, OptionWriter.method(:write_one))
  Writer.register(Package, PackageWriter.method(:write_one))
  Writer.register(Payload, PayloadWriter.method(:write_one))
  Writer.register(Permission, PermissionWriter.method(:write_one))
  Writer.register(Permit, PermitWriter.method(:write_one))
  Writer.register(PmProxy, PmProxyWriter.method(:write_one))
  Writer.register(PortMirroring, PortMirroringWriter.method(:write_one))
  Writer.register(PowerManagement, PowerManagementWriter.method(:write_one))
  Writer.register(Product, ProductWriter.method(:write_one))
  Writer.register(ProductInfo, ProductInfoWriter.method(:write_one))
  Writer.register(ProfileDetail, ProfileDetailWriter.method(:write_one))
  Writer.register(Property, PropertyWriter.method(:write_one))
  Writer.register(ProxyTicket, ProxyTicketWriter.method(:write_one))
  Writer.register(Qos, QosWriter.method(:write_one))
  Writer.register(Quota, QuotaWriter.method(:write_one))
  Writer.register(QuotaClusterLimit, QuotaClusterLimitWriter.method(:write_one))
  Writer.register(QuotaStorageLimit, QuotaStorageLimitWriter.method(:write_one))
  Writer.register(Range, RangeWriter.method(:write_one))
  Writer.register(Rate, RateWriter.method(:write_one))
  Writer.register(RegistrationAffinityGroupMapping, RegistrationAffinityGroupMappingWriter.method(:write_one))
  Writer.register(RegistrationAffinityLabelMapping, RegistrationAffinityLabelMappingWriter.method(:write_one))
  Writer.register(RegistrationClusterMapping, RegistrationClusterMappingWriter.method(:write_one))
  Writer.register(RegistrationConfiguration, RegistrationConfigurationWriter.method(:write_one))
  Writer.register(RegistrationDomainMapping, RegistrationDomainMappingWriter.method(:write_one))
  Writer.register(RegistrationLunMapping, RegistrationLunMappingWriter.method(:write_one))
  Writer.register(RegistrationRoleMapping, RegistrationRoleMappingWriter.method(:write_one))
  Writer.register(RegistrationVnicProfileMapping, RegistrationVnicProfileMappingWriter.method(:write_one))
  Writer.register(ReportedConfiguration, ReportedConfigurationWriter.method(:write_one))
  Writer.register(ReportedDevice, ReportedDeviceWriter.method(:write_one))
  Writer.register(RngDevice, RngDeviceWriter.method(:write_one))
  Writer.register(Role, RoleWriter.method(:write_one))
  Writer.register(SchedulingPolicy, SchedulingPolicyWriter.method(:write_one))
  Writer.register(SchedulingPolicyUnit, SchedulingPolicyUnitWriter.method(:write_one))
  Writer.register(SeLinux, SeLinuxWriter.method(:write_one))
  Writer.register(SerialNumber, SerialNumberWriter.method(:write_one))
  Writer.register(Session, SessionWriter.method(:write_one))
  Writer.register(SkipIfConnectivityBroken, SkipIfConnectivityBrokenWriter.method(:write_one))
  Writer.register(SkipIfSdActive, SkipIfSdActiveWriter.method(:write_one))
  Writer.register(Snapshot, SnapshotWriter.method(:write_one))
  Writer.register(SpecialObjects, SpecialObjectsWriter.method(:write_one))
  Writer.register(Spm, SpmWriter.method(:write_one))
  Writer.register(Ssh, SshWriter.method(:write_one))
  Writer.register(SshPublicKey, SshPublicKeyWriter.method(:write_one))
  Writer.register(Sso, SsoWriter.method(:write_one))
  Writer.register(Statistic, StatisticWriter.method(:write_one))
  Writer.register(Step, StepWriter.method(:write_one))
  Writer.register(StorageConnection, StorageConnectionWriter.method(:write_one))
  Writer.register(StorageConnectionExtension, StorageConnectionExtensionWriter.method(:write_one))
  Writer.register(StorageDomain, StorageDomainWriter.method(:write_one))
  Writer.register(StorageDomainLease, StorageDomainLeaseWriter.method(:write_one))
  Writer.register(SystemOption, SystemOptionWriter.method(:write_one))
  Writer.register(SystemOptionValue, SystemOptionValueWriter.method(:write_one))
  Writer.register(Tag, TagWriter.method(:write_one))
  Writer.register(Template, TemplateWriter.method(:write_one))
  Writer.register(TemplateVersion, TemplateVersionWriter.method(:write_one))
  Writer.register(Ticket, TicketWriter.method(:write_one))
  Writer.register(TimeZone, TimeZoneWriter.method(:write_one))
  Writer.register(TransparentHugePages, TransparentHugePagesWriter.method(:write_one))
  Writer.register(UnmanagedNetwork, UnmanagedNetworkWriter.method(:write_one))
  Writer.register(Usb, UsbWriter.method(:write_one))
  Writer.register(User, UserWriter.method(:write_one))
  Writer.register(UserOption, UserOptionWriter.method(:write_one))
  Writer.register(Value, ValueWriter.method(:write_one))
  Writer.register(VcpuPin, VcpuPinWriter.method(:write_one))
  Writer.register(Vendor, VendorWriter.method(:write_one))
  Writer.register(Version, VersionWriter.method(:write_one))
  Writer.register(VirtioScsi, VirtioScsiWriter.method(:write_one))
  Writer.register(VirtualNumaNode, VirtualNumaNodeWriter.method(:write_one))
  Writer.register(Vlan, VlanWriter.method(:write_one))
  Writer.register(Vm, VmWriter.method(:write_one))
  Writer.register(VmBase, VmBaseWriter.method(:write_one))
  Writer.register(VmPlacementPolicy, VmPlacementPolicyWriter.method(:write_one))
  Writer.register(VmPool, VmPoolWriter.method(:write_one))
  Writer.register(VmSummary, VmSummaryWriter.method(:write_one))
  Writer.register(VnicPassThrough, VnicPassThroughWriter.method(:write_one))
  Writer.register(VnicProfile, VnicProfileWriter.method(:write_one))
  Writer.register(VnicProfileMapping, VnicProfileMappingWriter.method(:write_one))
  Writer.register(VolumeGroup, VolumeGroupWriter.method(:write_one))
  Writer.register(Watchdog, WatchdogWriter.method(:write_one))
  Writer.register(Weight, WeightWriter.method(:write_one))
end
