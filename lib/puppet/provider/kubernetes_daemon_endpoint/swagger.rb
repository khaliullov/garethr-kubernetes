# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_daemon_endpoint).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        Port: instance.Port.respond_to?(:to_hash) ? instance.Port.to_hash : instance.Port,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_daemon_endpoint #{name}")
    create_instance_of('daemon_endpoint', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('daemon_endpoint', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_daemon_endpoint #{name}")
    destroy_instance_of('daemon_endpoint', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('daemon_endpoint')
  end

  def build_params
    params = {
    
      
        Port: resource[:Port],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
