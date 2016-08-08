def bip_set(name, bind)
  if name.is_a?(String)
    eval('column :'+name+' do |state|
      best_in_place state, :'+name+', as: :input, url: [:admin, state]
    end',bind)
  else
    name.each do |n|
      eval('column :'+n+' do |state|
      best_in_place state, :'+n+', as: :input, url: [:admin, state]
      end',bind)
    end
  end
end