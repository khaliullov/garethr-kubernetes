# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_object_field_selector).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        apiVersion: instance.apiVersion.respond_to?(:to_hash) ? instance.apiVersion.to_hash : instance.apiVersion,
      
    
      
        fieldPath: instance.fieldPath.respond_to?(:to_hash) ? instance.fieldPath.to_hash : instance.fieldPath,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_object_field_selector #{name}")
    create_instance_of('object_field_selector', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('object_field_selector', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_object_field_selector #{name}")
    destroy_instance_of('object_field_selector', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('object_field_selector')
  end

  def build_params
    params = {
    
      
        apiVersion: resource[:apiVersion],
      
    
      
        fieldPath: resource[:fieldPath],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
