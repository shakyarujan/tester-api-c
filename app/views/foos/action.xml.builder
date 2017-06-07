xml.root do
    @actions.each do |action|
        xml.actions do   
            xml.action action
        end
    end
end